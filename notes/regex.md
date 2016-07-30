# regular expression


## special character

`.*[]^${}\+?|()` need to be escaped with `\`

* `^`: start of line
* `$`: end of line
* `.`: match anything but newline `\n`
* `[]`: anything specified inside `[]`
* `[^]: match anyting but whats specified after `^`
* `[ - ]`: match range specified before and after `-` -> numbers: `[0-9]`. non-continuous ranges: `[a-ch-m]` matches `a` to `c` and `h` to `m`
* `\*`: preceding character mush appear zero or more times

### extended regular expression character (not supported by sed)

* `?`: preceding character appear zero or one time
* `+`: preceding character must appear once or more
* `{}`: number of repetition allowed. `{2}` exactly match 2 times. `{2,4}` matches between 2 and 4 times.
* `|`: logical OR
* `()`: grouping character and threated like unique character

## special character classes

* `[[:alpha:]]`: any upper and lower alphabetical character
* `[[:alnum:]]`: any alphanumeric character
* `[[:blank:]]`: space or tab
* `[[:space:]]`: any whitespace, sapce, tab, CR, NL, FF, Vt
* `[[:digit:]]`: digit 0-9
* `[[:lower:]]`: lowercase alphabetical character
* `[[:upper:]]`: uppercase alphabetical character
* `[[:print:]]`: any printable character
* `[[:punct:]]`: any punctuation character

## use case

* __delete blank lines__: `sed '/^$/d' filename`


## linux engines

* __BRE__ : Basic Regular Expression engine
* __ERE__ : Extended Regular Expression engine
