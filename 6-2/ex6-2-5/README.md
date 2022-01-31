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
```
(start 50 160)
(draw-solid-disk (make-posn 25 30) 20 'red)
(draw-circle (make-posn 25 80) 20 'yellow)
(draw-circle (make-posn 25 130) 20 'green)

; ---------------------------------------------------------

;; clear-bulb : symobl -> boolean
;; to clear one of the traffic bulbs
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red)
     (and (clear-solid-disk (make-posn 25 30) 20)
          (draw-circle (make-posn 25 30) 20 'red))]
    [(symbol=? color 'yellow)
     (and (clear-solid-disk (make-posn 25 80) 20)
          (draw-circle (make-posn 25 80) 20 'yellow))]
    [(symbol=? color 'green)
     (and (clear-solid-disk (make-posn 25 130) 20)
          (draw-circle (make-posn 25 130) 20 'green))]))

;; tests
(clear-bulb 'red)

; ---------------------------------------------------------

;; draw-bulb : symbol -> true
;; to draw a bulb on the traffic light
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red)
     (draw-solid-disk (make-posn 25 30) 20 'red)]
    [(symbol=? color 'yellow)
     (draw-solid-disk (make-posn 25 80) 20 'yellow)]
    [(symbol=? color 'green)
     (draw-solid-disk (make-posn 25 130) 20'green)]))

;; tests
(draw-bulb 'green)

; ---------------------------------------------------------

;; switch : symbol symbol -> true
;; to switch the traffic ligt from one color to the next
(define (switch from to)
  (and (clear-bulb from)
       (draw-bulb to)))

;; tests
(switch 'green 'yellow)
(switch 'yellow 'red)


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

;; tests
(next 'red)
(next 'green)
(next 'yellow)
(next 'red)
```