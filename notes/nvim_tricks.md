# random general tricks

## apply macro to lines

apply from current line to end of file macro on register _a_
```vimscript
:.,$norm! @a
```

apply on all file macro on register _a_
```vimscript
:%norm! @a
```

apply on lines matching pattern macro on register _a_
```vimscript
:g/pattern/norm! @a
```

apply on visual selected line macro on register _a_
```vimscript
:<,'>norm! @a
```
