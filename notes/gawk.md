# gawk

## basic command

`gawk '{print $0}'` : print line received

to print lines matching pattern.

`gawk '/pattern/{print $0}`

## separator variables

* __FS__: input separator field
* __OFS__: output separator field

`gawk '{BEGIN{FS=","} {print $1, $2}' filename`

## useful variables

* __NF__ : variable allow to retreive the last variable
* __FNR__ : number of variables

```bash
gawk 'BEGIN{FS=":"; OFS=":"} {print $1, $NF}' filename
```

## assigning variable

```bash
gawk '
BEGIN{
my_var="hello"
print my_var
}'
```

you can assign numerical values and perform operations on them (including remainder `%` and exponentiation `^` or `**`)

### arrays (dictionaries)

`var[index] = element`

to access it like a numerical array (with indexes)

```bash
gawk 'BEGIN{
var['a'] = 1
var['b'] = 2
var['c'] = 3
for (key in var)
{
        print var[key]
}
```
**will not necessarly returned in the same order as declared**

to delete an element: `delete var[key]`

## regular expressions

pattern must appear before the block of commands

```bash
gawk '
/pattern/{print $1}' filename'
```

### matching operator

`~` allows to apply pattern to a specific data field

```bash
gawk 'BEGIN{FS=","}
$2 ~ /pattern/{print $0}' filename
```

will apply `pattern` to the second data field only. the operator can be negate to use all data field except the one specified.

```bash
gawk 'BEGIN{FS=","}
$1 !~ /pattern/{cmd}' filename
```

### matching mathematical expression pattern

it's possible to use mathematical to match. supported comparator `==` `=<` `>=` `>`.

```bash
gawk '$4 == 0{print $1}' filename
```

## structured commands

### if

`if (condition) statement` or

```bash
if (condition)
    statement
```

or

```bash
if (condition)
{
   cmd1
   cmd2
} else
{
   cmd3
}
```

or (full cmd)

`gawk '{if (condition) cmd; else cmd2}' filename`

### while

```bash
while (condition)
{
        cmd
}
```

### do while

```bash
do
{
    statement
} while (condition)
```

### for

```
for ( variable assignment; condition; iteration process)
{
    statement
}
```

## formatted printing

`printf "format string", var1, var2, ...`. the format specifier is use like : `%[modifier]control-letter`.

control-letter:

* __c__ : display number as an ASCII character
* __d__ : display an integer value
* __i__ : display an integer value
* __e__ : display a number in scientific notation
* __f__ : display a floating-point value
* __g__ : display shorter beetween scientific notation and floating point
* __o__ : display an octal value
* __s__ : display a text string
* __x__ : display a hexadecimal value
* __X__ : display a hexadecimal value with upercase letters

it is possible to specify the width, precision and left or right justification for the text.

* __width__ : `printf "%5s", var`
* __precision__ : `printf "%.5d", 0.2`
* __justification__ : `printf "%-s", '  hello'`

## built-in function

### mathematical

* __atan2(x, y)__ : arctangent of x/y in radians
* __cos(x)__ : cosinus
* __exp(x)__ : exponential
* __int(x)__ : integer part (to lower or floor)
* __log(x)__ : natural logarithm
* __rand()__ : random between 0, 1
* __sin(x)__ : sinus
* __sqrt(x)__ : square root
* __srand(x)__ : seed value for random numbers

### bitwise

* __and(v1, v2)__ : AND
* __or(v1, v2)__ : OR
* __xor(v1, v2)__ : XOR
* __compl(val)__ : NOT
* __lshift(val, count)__ : SHIFT LEFT
* __rshift(val, count)__ : SHIFT RIGHT

### string function

* __asort(s, [,d])__ : sort array `s` based on data element values, stored in `d` if given
* __asorti(s, [,d])__ : sort array `s` based on index value. result array has index values as data element. stored in `d` if given.
* __index(s, t)__ : return index of string `t` in string `s` or 0 if not found
* __length([s])__ : return length of string `s`
* __match(s, a [,r])__ : returns index of `s` where `r` pattern ocur, stored in `a` if given
* __split(s, a [,r])__ : splits `s` into array `a` using FS or `r` pattern
* __tolower(s)__ : `s` to lowercase
* __toupper(s)__ : `s` to uppercase

### time function

* __mktime(datespec)__ : convert a date specified in the format YYYY MM DD HH MM SS [DST] into a timestamp value
* __strftime(format, [,timestamp])__ : format time into formated day and date using `date()` shell function
* __systime()__ : returns the timestamp for the current time of day

## user defined function

```bash
function name([variables])
{
    statement
}
```

## special use

to une `{}` in gawk pattern, mush used `-re-interval`.

`gawk -re-interval '/pattern{n}pattern2/{print $0}'`
