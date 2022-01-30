# 习题 6.2.2
设计函数`clear-bulb`，读入`'green 'yellow`或`'red`之一，输出为**true**，效果是关掉红绿灯上相应颜色的灯，即清除相应颜色的圆盘并以相同颜色的圆代替。
> 设计诀窍选择：参见第 5 章节，了解输入为枚举类型的函数的设计。  
> 测试：在设计绘制图形的函数时，没有考虑到测试表达式。尽管可以编制一个测试软件包，但它超出了本书的范围。  
> 效果组合：绘制和清楚圆盘的操作在成功完成任务后所产生的结果都是**true**。将这些值和效果组合在一起的自然方法是使用 and 表达式。特别地，如果`exp1`和`exp2`都产生效果，并且希望在`exp1`之后看到`exp2`的效果，可以写成：`and exp1 exp2`。后面将详细讨论效果的生成并学习将效果组合在一起的不同方式。  
  
答：  
```
;; 我们需要实现的效果：关掉红绿灯上相应颜色的灯
;; 可以先把问题简化为关掉一个颜色的灯，比如关掉红色的灯，即清除红色的圆盘并以红色的圆代替。
;; 既然要关红灯，首先得把红灯打开，让它持续亮着灯5秒，再关灯。



;; 设计函数clear-bulb，输入为'green 'yellow 或 'red ，输出为true
;; 关灯的函数合约
;; clear-bulb : 'symbol -> boolean
;; (define (clear-bulb 'color) ...)
;; 该函数的输入是符号，该程序对于3种不同的情况给出不同的答案：
;; 输入红色，画面是打开红灯，五秒后熄灭红灯
;; 输入绿色，画面是打开绿灯，五秒后熄灭绿灯
;; 输入黄色，画面是打开黄灯，五秒后熄灭黄灯


;; 函数例子，选择 'green 'red 'yellow 作为例子。
(= (clear-bulb 'green) #true)
(= (clear-bulb 'red) #true)
(= (clear-bulb 'yellow) #true)

;; 主体——条件：函数主体包含的cond表达式的数目应该与不同情况的数目一样，程序框架：
(define (clear-bulb 'color)
  (cond
    [... ...]
    [... ...]
    [... ...]))

;; 阐明与每种情况相关的条件，条件是关于函数参数'color的断言，使用Scheme关系表达式或自定义的函数来表示。
(= (symbol=? 'color 'red) 'red)
(= (symbol=? 'color 'green) 'green)
(= (symbol=? 'color 'yellow) 'yellow)

;; 按设计诀窍写出cond表达式：
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red) (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? color 'yellow) (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                   (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? color 'green) (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
                                   (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else 'None]))

··· ···
```
完整程序`ex6-2-2-version2.rkt`
```
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

;; 打开某种颜色灯的函数
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red) (and (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'yellow) (and (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                   (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                   (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'green) (and (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                  (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                  (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else 'None]))

;; 关闭灯的函数
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red) (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? color 'yellow) (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                   (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? color 'green) (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
                                   (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else 'None]))

;; 最后我将程序汇总成一个闪烁的灯，函数的参数就是颜色
;; 打开画布
;; 绘制某色灯泡
;; 暂缓 evaluation 2秒钟
;; 执行关灯
;; 暂缓 evaluation 2秒钟
;; 绘制某色灯泡
;; 暂缓 evaluation 2秒钟
;; 执行关灯
;; 暂缓 evaluation 2秒钟
;; 退出画布
(define (flashing-bulb color)
  (and (start WIDTH HEIGHT)
       (draw-bulb color)
       (sleep-for-a-while 2)
       (clear-bulb color)
       (sleep-for-a-while 2)
       (draw-bulb color)
       (sleep-for-a-while 2)
       (clear-bulb color)
       (sleep-for-a-while 2)
       (stop)))

;; 执行函数,参数为红色
(flashing-bulb 'red)

;; 有一次的错误报告如下，原因可能是我在运行函数(flashing-bulb)前,有一个多余(stop)在程序的最后一行，该问题已被我修复，：
;; Welcome to DrRacket, version 8.3 [cs].
;; Language: Beginning Student [custom]; memory limit: 128 MB.
;; Teachpack: draw.rkt.
;; evaluate (start <num> <num>) first
;; >

;; 解决问题后，输出为一个#true：
;; Welcome to DrRacket, version 8.3 [cs].
;; Language: Beginning Student [custom]; memory limit: 128 MB.
;; Teachpack: draw.rkt.
;; #true
;; > 

```