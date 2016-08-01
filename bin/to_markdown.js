var marked = require('marked');
var terminalRender = require('marked-terminal');
var fs = require('fs');

var notes = fs.readFileSync('/home/koki/dotfile/notes/' + process.argv[2], 'utf8');

marked.setOptions({
  renderer: new terminalRender()
});


console.log(marked(notes));
