# sed

## basic command

* `sed s/search for/replace by/`

## flags

* `sed s/pattern/replace/flags`

### flags

* _n_ a number -> which occurence to replace
* `g` -> replace all occurence
* `p` -> print original line
* `w` -> write replace to a file the line that have match the `pattern`


## different character separator

* `sed s!/bin/bash!/bin/zsh!` will use `!` as delimiter


## specifying region

### numeric line

* __single line__ : `sed '2s/pattern/replace/'`
* __multine lines__ : `sed '2,4s/pattern/replace/'`
* __to end of file__ : `sed '4,$s/pattern/replace/'`

### pattern matching line

* `pattern_line/s/pattern_item/replace_item`

## multiple command

apply two sed command on line 2

```
sed '2{
s/pattern1/replace1/
s/patter2/replace2/
}'
```

## delete line

* __delete line__ : `sed '3,4d'`
* __delete line with pattern__: `sed '/pattern/d'`

## insert and append text
insert line above or below

* __insert__ : `sed 'i\insert text`
* __append__ : `sed 'a\append text`

specify location:

`sed '$a\append at end of file'`

## change line

* change third line : `sed '3c\change all line'`
* change matching line : `sed '/pattern/c\text to put'`

## print line number

`sed '='`

to print line number matching pattern

```
sed -n '/pattern/ {
=
}' filename
```
## read

add readed line to file with line number, address and pattern apply to filename

* __with line__ : `sed '3r read_file' filename`
* __with pattern__ : `sed '/pattern/r read_file' filename`
* __at the end__ : `sed '$r read_file' filename`
