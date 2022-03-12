const express = require('express');
const router = express.Router();
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const uuid = require('uuid');

const db = require('../db/db.js');
const userMid = require('../middleware/users.js');
const { validateRegister } = require('../middleware/users.js');

//signup
router.post('/register', userMid.validateRegister, (req, res, next) => {
  db.query(
    `SELECT * FROM users WHERE LOWER(username) = LOWER(${db.escape(
      req.body.username
    )});`,
    (err, result) => {
      if (result.length) {
        return res.status(409).send({
          msg: 'This username is already in use!'
        });
      }else {
      bcrypt.hash(req.body.password, 10, (err, hash) => {
        if (err) {
          return res.status(500).send({
            message: err,
          })
        } else {
          db.query(
            `INSERT INTO users (id, username, password, registered, fullname, address) VALUES ('${uuid.v4()}',   
                        ${db.escape(req.body.username)}, ${db.escape(hash)}, now(),${db.escape(req.body.fullname)},${db.escape(req.body.address)})`, (err, result) => {
            if (err) {
              throw err;
              return res.status(400).send({
                message: err
              })
            }
            return res.status(201).send({
              msg: 'Registered!'
            });
          }
          );
        }
      });
    }
  }
  );
});
//login
router.post('/login', (req, res, next) => {
  db.query(
    `SELECT * FROM users WHERE username = ${db.escape(req.body.username)};`,
    (err, result) => {
      // user does not exists
      if (err) {
        throw err;
        return res.status(400).send({
          msg: err
        });
      }

      if (!result.length) {
        return res.status(401).send({
          msg: 'Username or password is incorrect!'
        });
      }

      // check password
      bcrypt.compare(
        req.body.password,
        result[0]['password'],
        (bErr, bResult) => {
          // wrong password
          if (bErr) {
            throw bErr;
            return res.status(401).send({
              msg: 'Username or password is incorrect!'
            });
          }

          if (bResult) {
            const token = jwt.sign({
              username: result[0].username,
              userId: result[0].id
            },
              'SECRETKEY', {
              expiresIn: '7d'
            }
            );

            db.query(
              `UPDATE users SET login = now() WHERE id = '${result[0].id}'`
            );
            return res.status(200).send({
              msg: 'Logged in!',
              token,
              user: result[0]
            });
          }
          return res.status(401).send({
            msg: 'Username or password is incorrect!'
          });
        }
      );
    }
  );
});

router.get('/listProduct', (req, res) => {
  db.query('SELECT * FROM produk', (err, rows, fields) => {
    if (!err)
      res.send(rows)
    else
      console.log(err);
  })
})

//ADD CART SESSION
router.post('/addToCart', (req, res) => {
  let ay = req.body;
  db.query('SELECT idCart, qty,user FROM cart where idCart=? AND user=?', [ay.idCart, ay.user], (err, rows, fields) => {
    if (!err) {
      if (rows.length === 0) {
        db.query('INSERT INTO `cart` (idOrder, idCart,qty,user) VALUES (?,?,?,?)', [ay.idOrder, ay.idCart, ay.qty, ay.user], (err, rows, fields) => {
          if (!err) {
            return res.status(200).send({
              msg: 'Item Added'
            });
          } else {
            console.log(err);
          }
        });
      } else {
        //update
        let qty = rows[0].qty + 1;
        db.query('UPDATE `cart` SET qty=?  WHERE idCart=? AND user=?', [qty, ay.idCart, ay.user], (err, rows, fields) => {
          if (!err) {
            return res.status(200).send({
              msg: 'Item Updated'
            });
          } else {
            console.log(err);
          }
        });
      }
    } else {
      console.log(err);
    }
  });

});

router.post('/cartPlus', (req, res) => {
  let ay = req.body;
  db.query('SELECT idCart, qty,user FROM cart where idCart=? AND user=?', [ay.idCart, ay.user], (err, rows, fields) => {
    if (!err) {
      if (rows.length === 0) {
        db.query('INSERT INTO `cart` (idOrder, idCart,qty,user) VALUES (?,?,?,?)', [ay.idOrder, ay.idCart, ay.qty, ay.user], (err, rows, fields) => {
          if (!err) {
            return res.status(401).send({
              msg: 'Item Added'
            });
          } else {
            console.log(err);
          }
        });
      } else {
        //update
        let qty = rows[0].qty + 1;
        db.query('UPDATE `cart` SET qty=?  WHERE idCart=? AND user=?', [qty, ay.idCart, ay.user], (err, rows, fields) => {
          if (!err) {
            return res.status(200).send({
              msg: 'Item Updated'
            });
          } else {
            console.log(err);
          }
        });
      }
    } else {
      console.log(err);
    }
  });

});

router.post('/cartMin', (req, res) => {
  let ay = req.body;
  db.query('SELECT idCart, qty,user FROM cart where idCart=? AND user=?', [ay.idCart, ay.user], (err, rows, fields) => {
    if (!err) {
      if (rows.length === 0) {
        db.query('INSERT INTO `cart` (idOrder, idCart,qty,user) VALUES (?,?,?,?)', [ay.idOrder, ay.idCart, ay.qty, ay.user], (err, rows, fields) => {
          if (!err) {
            return res.status(200).send({
              msg: 'Item Added'
            });
          } else {
            console.log(err);
          }
        });
      } else {
        //update
        let qty = rows[0].qty - 1;
        db.query('UPDATE `cart` SET qty=?  WHERE idCart=? AND user=?', [qty, ay.idCart, ay.user], (err, rows, fields) => {
          if (!err) {
            return res.status(200).send({
              msg: 'Item Updated'
            });
          } else {
            console.log(err);
          }
        });
      }
    } else {
      console.log(err);
    }
  });

});

router.get('/listCart', (req, res) => {
  db.query('SELECT a.idOrder, a.idCart, a.qty,b.id,b.name,b.price, b.image FROM cart AS a INNER JOIN produk AS b ON a.idCart= b.id;', (err, rows, fields) => {
    if (!err) {
      return res.status(200).send(
        rows
      );
    } else {
      console.log(err);
    }
  })
})

//http://localhost:3000/api/cart
router.get('/cart-list/:user', (req, res) => {
  let user = req.params.user;
  db.query('SELECT * FROM cart WHERE user= ?', [user], (err, rows) => {
    if (!err) {
      db.query('SELECT a.idOrder, a.idCart, a.qty,b.id,b.name,b.price, b.image FROM cart AS a INNER JOIN produk AS b ON a.idCart= b.id WHERE a.user= ?', [user], (err, rows, fields) => {
        if (!err) {
          return res.status(200).send(
            rows
          );
        } else {
          console.log(err);
        }
      })
    }
    else
      console.log(err);
  })
});

//DELETE SESSION
router.delete('/cart-list/:idOrder', (req, res) => {
  let id = req.params.idOrder;
  let user = req.params.user;
  db.query('DELETE FROM cart where idOrder=? ', [id], (err, rows, fields) => {
    if (!err) {
      return res.status(200).send({
        msg: 'Item Deleted'
      });
    } else {
      console.log(err);
    }
  })
})

//ListPayment
router.get('/listPayment', (req, res) => {
  db.query('SELECT * FROM `payment`', (err, rows, fields) => {
    if (!err) {
      return res.status(200).send(
        rows
      );
    } else {
      console.log(err);
    }
  })
})

router.post('/payment-fix', (req, res, next) => {
  let ay = req.body;
  db.query('SELECT id, price,payment FROM finalpayment where id=?', [ay.id, ay.price,ay.payment], (err, rows, fields) => {
    if (!err) {
      if(ay.payment!=null){
        db.query('INSERT INTO `finalpayment` (id, price, payment,date,user,idPayment) VALUES (?,?,?,now(),?,?)', [ay.id, ay.price,ay.payment,ay.user,ay.idPayment], (err, rows, fields) => {
          if (!err) {
            return res.status(200).send({
              msg: 'Waiting for verify the payment'
            });
          } else {
            console.log(err);
          }
        })
      }else{
        console.log(err)
      }
    } else {
      throw err;
      return res.status(400).send(
        console.log(err)
      );        
    }
  })
})

router.post('/payment-history', (req, res, next) => {
  let ay = req.body;
  console.log(req.body.metod)
  db.query('SELECT * from `historypayment` WHERE user=? ', [ay.user], (err, rows, fields) => {
    if (!err) {
      db.query('INSERT INTO `historypayment` SELECT *,CURRENT_TIMESTAMP,"'+req.body.metod+'" FROM `cart` WHERE user=?', [ay.user], (err, rows, fields) => {
        if (!err) {
          db.query('DELETE FROM `cart` WHERE user=? ', [ay.user], (err, rows, fields) => {
            if (!err) {
              return res.status(200).send({
                msg: 'Transaction is Success!'
              });
            } else {
              console.log(err);
            }
          })
        } else {
          console.log(err);
        }
      })
    } else {
      throw err;
      return res.status(400).send(
        console.log(err)
      );        
    }
  })
})

router.get('/payment-list/:user', (req, res) => {
  let user = req.params.user;
  db.query('SELECT * FROM finalpayment WHERE user= ?', [user], (err, rows) => {
    if (!err) {
      return res.status(200).send(
        rows
      );
    }
    else
      console.log(err);
  })
});

router.get('/payment-after/:idPayment', (req, res) => {
  let user = req.params.idPayment;
  db.query('SELECT * FROM finalpayment WHERE idPayment= ?', [user], (err, rows) => {
    if (!err) {
      return res.status(200).send(
        rows
      );
    }
    else
      console.log(err);
  })
});

router.get('/payment-test/:user', (req, res) => {
  let user = req.params.user;
  db.query('SELECT date, metod, user, GROUP_CONCAT(idCart) FROM `historypayment`WHERE user=? GROUP BY date, user', [user], (err, rows) => {
    if (!err) {
      return res.status(200).send(
        rows
      );
    }
    else
      console.log(err);
  })
});
module.exports = router;