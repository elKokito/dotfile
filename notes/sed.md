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

## branching

skip command on address. [address]b [label], example:

`sed '{2,3b ; s/pattern/replace/; s/pattern2/replace2/}' filename`

line 2 and 3 will skip the commands

### branching with labels

instead of skiping lines, send to `label` commands, example:

```
sed '{/pattern/b label ; s/pattern1/replace/
:label
s/pattern3/replace2/}' filename
```

lines matching `pattern` will use `s/pattern3/replace2/`, the other lines will use all the patterns.
labels can be place before any command (can create infinte loop).

### branching with test

[address]t [label], basic `if-then`. use if no match then use other command.

```
sed '{
s/pattern/replace/
t
s/pattern2/replace2/
}' filename
```

## replacing with pattern

`&` is used to represent the matching pattern in the substitution command.

`sed 's/pattern/"&"/g'` will surround `pattern` with `"`

### replace individual words in pattern

`sed 's/\(sub-pattern\) rest-of-pattern/\1 replace/` will replace `sub-pattern` with `replace` in a line matching `sub-pattern rest-of-parttern`.
`\1` refers to first matching group -> `\(...\)`. can be `\2`, `\3`, ...

## tricks

* insert line number before text: `sed '=' | sed'N; s/\n/ /'`
