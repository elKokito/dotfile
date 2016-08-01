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

## multiline process

* `N` add next line in data stream to create multiline group
* `D` delete a single line in a multiline group, delete the first line
* `P` print a single line in a multiline group, print the first line

### N

`sed '/pattern/{ N; s/pattern2/replace/ }' filename` will search for `pattern`. the matching line will combine with the next line to apply de substitution.

searching in multiple lines: `sed 'N ; s/pattern in multiple line/replace in multiple line/' filename`. normally used this way:

```
sed '
s/pattern/replace/
N
s/pattern\npattern2/replace\nreplace2/
' filename
```

this allow to treat single line match and multile line match.


## hold space

* `h` : copies pattern space to hold space
* `H` : appends pattern space to hold space
* `g` : copies hold space to pattern space
* `G` : appends hold space to pattern space
* `x` : exchanges contents of pattern and hold spaces
