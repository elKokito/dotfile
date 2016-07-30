# gawk

# basic command

`gawk '{print $0}'` : print line received

to print lines matching pattern.

`gawk '/pattern/{print $0}`

# special use

to une `{}` in gawk pattern, mush used `-re-interval`.

`gawk -re-interval '/pattern{n}pattern2/{print $0}'`
