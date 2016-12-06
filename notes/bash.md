# bash

## variables

* `$#` -> number of arguments for the script
* `$*` -> all the arguments as one item
* `$@` -> argument as list (with `for` command)
* `$?` -> last command exit status

## command line shortcuts

* `!$` gives the last parameter of last command
* `!*` gives all arguments of last command

## useful commands

`tac` reverse of `cat`

## du

* first level directories sorted by size: `du -h --max-depth=2 /var | sort -n -r`
