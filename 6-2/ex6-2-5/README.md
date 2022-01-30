# 练习 6.2.5
下面是函数`next`：
```
;; next : symbol -> symbol
;; 将当前红绿灯颜色转换为下一颜色
(define (next current-color)
  (cond
    [(and (symbol=? current-color 'red) (switch 'red 'green))
     'green]
    [(and (symbol=? current-color 'yellow) (switch 'yellow 'red))
     'red]
    [(and (symbol=? current-color 'green) (switch 'green 'yellow))
     'yellow])) 
```
函数的输入为红绿灯的当前颜色，输出为红绿灯的下一个颜色。  
	- 即如果输入为`'green`，输出为`'yellow`；  
	- 输入为`'yellow`，输出为`'red`；  
	- 输入为`'red`，输出为`'green`。  
  
将`图 6.1` 的最后3行代码替换成`(draw-bulb red)`，是红绿灯的当前状态为红灯亮，然后使用`next`函数将红绿灯颜色进行 4 次转换。 
