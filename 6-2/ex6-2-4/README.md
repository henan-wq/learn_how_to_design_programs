# 练习 6.2.4
设计函数`switch`，输入是两个符号，分别代表红绿灯上的两种颜色，输出为`true`，效果为先关闭第一个符号表示的灯，然后打开第二个符号表示的灯。  
  
答：  
```
;; 函数switch的合约：
;; switch : symbol symbol -> boolean

;; 两个输入分别是color1 color2
;; 函数头部：
;; (define (switch color1 color2) ...)

;; --------
;; 以下的做法似乎需要确认当前灯的状态，但我目前不知道如何确认目前亮着的灯的状态是什么……后面可能会学习到这方面的知识。  
;; 通过上一个练习把灯打开后，顺便将三盏灯的状态保存在不同的变量，而我可以通过在switch函数里对状态与我的输入进行比较而创建函数体。

;; 程序用途：输入第一个颜色为color1的符号，输入第二个颜色为color2的符号，程序的输出为一个true布尔值。
;; 先确认当前亮着的灯是不是color1所代表的颜色，如果是，则关掉它，若不是，则跳过这条指令。
;; 先确人当前亮着的灯是不是color2所代表的颜色，如果不是，则打开它，若是，则跳过这条指令。
;; --------

;; 这个应该比较可行：
;; 下面的例子都是忽略了当前灯的状态，测试之前保持指令里需要要关闭的灯在目前是打开的状态！
;; 例子：
;; 关闭红灯，打开红灯
;; 关闭黄灯，打开黄灯
;; 关闭绿灯，打开绿灯

;; 关闭红灯，打开黄灯
;; (swtich 'red 'yellow)
;; 关闭红灯，打开绿灯
;; 关闭黄灯，打开红灯
;; 关闭黄灯，打开绿灯
;; 关闭绿灯，打开红灯
;; 关闭绿灯，打开黄灯

;; 关闭非（红/黄/绿）灯，打开红/黄/绿，给出错误提示
;; 关闭红/黄/绿，打开非（红/黄/绿）灯，给出错误提示
;; 关闭非（红/黄/绿）灯，打开非（红/黄/绿），给出错误提示

;; 程序体，仅从最简单的开始：
(cond
    [(and (symbol=? color1 'red)
          (symbol=? color2 'red))
     (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (sleep-for-a-while 5)
          (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(and (symbol=? color1 'yellow)
          (symbol=? color2 'yellow))
     (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (sleep-for-a-while 5)
          (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(and (symbol=? color1 'green)
          (symbol=? color2 'green))
     (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
          (draw-circle (make-posn X-BULS Y-GREEN) BULB-RADIUS 'green)
          (sleep-for-a-while 5)
          (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else "test"])
```
从关闭和打开同一种颜色的灯的情况来完善程序体，并输出为文件`ex6-2-4.rkt`，其他的情况太复杂先忽略：
```
;; 函数draw-bulb的合约：
;; draw-bulb : symbol -> boolean

;; 输入是color
;; 函数头部：
;; (define (draw-bulb color) ...)

;; 程序用途：输入一个颜色为color的符号，输出为true并打开红绿灯上相应颜色的灯。

;; 不论我们输入的符号是'green 'yellow 或'red。程序的输出都是true，我们需要找另一种输出的例子来了解程序运算过程中的问题。
;; 例子
;; 比如红灯亮的生成图
;; (draw-bulb 'red)
;; 比如黄灯亮的教学包生成图
;; (draw-bulb 'yellow)
;; 比如绿灯亮的生成图
;; (draw-bulb 'green)

;; 红绿灯的大小
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; 灯泡的位置
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; 绘制红灯亮时的灯光
;; (start WIDTH HEIGHT)
;; (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-circle (makek-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; 绘制黄灯亮时的灯光
;; (start WIDTH HEIGHT)
;; (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-circle (makek-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; 绘制绿灯亮时的灯光
;; (start WIDTH HEIGHT)
;; (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-solid-disk (makek-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; 程序体
;; (cond
;;     [(symbol=? color 'red) 绘制红灯，其他灯不亮]
;;     [(symbol=? color 'yellow) 绘制黄灯，其他灯不亮]
;;     [(symbol=? color 'green) 绘制绿灯，其他灯不亮]
;;     [else "Please enter 'red, 'yellow or 'green"])

;; 程序体

;; (cond
;;     [(symbol=? color 'red) (and (start WIDTH HEIGHT)
;;                                 (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;;                                 (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;;                                 (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
;;     [(symbol=? color 'yellow) (and (start WIDTH HEIGHT)
;;                                    (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;;                                    (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;;                                    (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
;;     [(symbol=? color 'green) (and (start WIDTH HEIGHT)
;;                                   (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;;                                   (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;;                                   (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
;;     [else "Please enter 'red, 'yellow or 'green"])

;; 完善程序体
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red)
     (and (start WIDTH HEIGHT)
          (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'yellow)
     (and (start WIDTH HEIGHT)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'green)
     (and (start WIDTH HEIGHT)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else "Please enter 'red, 'yellow or 'green"]))


(define (switch color1 color2)
  (cond
    [(and (symbol=? color1 'red)
          (symbol=? color2 'red))
     (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (sleep-for-a-while 5)
          (clear-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'RED)
          (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(and (symbol=? color1 'yellow)
          (symbol=? color2 'yellow))
     (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (sleep-for-a-while 5)
          (clear-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(and (symbol=? color1 'green)
          (symbol=? color2 'green))
     (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
          (sleep-for-a-while 5)
          (clear-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
          (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else "The current switch function only provides simple functionality, so other arguments may return this hint"]))

;; 先把灯打开测试：
;; (draw-bulb 'red)
(draw-bulb 'yellow)
;; (draw-bulb 'green)
;; (draw-bulb 'black)


;; 再测试switch：
(sleep-for-a-while 5)
(switch 'yellow 'yellow)
```