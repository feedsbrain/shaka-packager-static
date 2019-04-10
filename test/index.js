var it = require('tape'),
    fs = require('fs'),
    packager = require('..');

it('should find packager', function(t) {
  var stats = fs.statSync(packager.path);
  t.ok(stats.isFile(packager.path));
  t.end();
});
