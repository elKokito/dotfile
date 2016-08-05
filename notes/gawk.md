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

## special use

to une `{}` in gawk pattern, mush used `-re-interval`.

`gawk -re-interval '/pattern{n}pattern2/{print $0}'`
