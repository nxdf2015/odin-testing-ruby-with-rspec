


> Written with [StackEdit](https://stackedit.io/).

Connect Four

 Connect_4
```sequence
title: connect four
start--> loop : connect_four start
loop -->
```



```flow
st=>start: start
e=>end: end
op=>operation: select a column
valid=>condition: column full ?
four=>condition: four pieces aligned ?
change=>subroutine: change player
full=>condition: board full ?
win=>inputoutput: win
draw=>inputoutput: draw
st->op
op->valid
valid(no)->four
valid(yes)->op
four(yes)->win
win->e
four(no)->full
full(yes)->draw
full(no)->change->op
draw->e
```
