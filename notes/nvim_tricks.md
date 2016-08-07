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

## replace with register with register "a"
:%s/<regex>/\=@a/g

### move inside

* `o` : go to other end
* `O` : go to other end (in visual block)
