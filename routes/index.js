var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  var model = {
    title:'Azure',
    message:process.env.message || "This is Hidayaths Development"
  }
  res.render('index', model);
});

module.exports = router;
