var pg = require('pg');

var constring = 'tcp://localhost/nerdspeak';

pg.connect(constring, function(err, cl) {
  console.log(err);
  cl.query('select * from keyword', function(e, re) {
    console.log(re.rows, 'num-rows: ', re.rows.length);
    pg.end();
  });


});
