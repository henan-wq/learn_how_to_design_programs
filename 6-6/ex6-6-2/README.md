# 习题6.6.2
使用模板fun-for-circle设计函数draw-a-circle。该函数的输入为一个circle结构体，其效果是在屏幕上绘制一个相应的圆。在进行函数测试前，请使用(start 300 300)创建画布。  
答：  
```
;; 给出一个带有颜色的圆circle的结构体定义和数据定义。
;; 一个圆包括三部分信息：圆心、半径和圆周的颜色。
;; 其中第一个信息是posn结构体，第二个信息是数，第三个信息是（颜色）符号。
;; 开发模板fun-for-circle，它是输入为circle的函数的框架，输出未定。  

;; 数据分析和定义：
(define-struct circle (center  radius circumference-color))
;; circle is a structure. (make-circle center radius circumference-color)，其中
;; center is a structure.
;; radius is a number.
;; circumference-color is a symbol.
(define-struct center (undefined-Horizontal undefined-Vertical))
;; center is a structure. (make-center undefined-Horizontal undefined-Vertical)，其中
;; undefined-center是number。

;; 合约： circle : structure number symbol -> undefined-type
;; 合约： center : number number -> number
;; 用途说明：结构体circle包括圆心、半径和圆周的颜色，其中圆心也是一个结构体。

;; 例子：
;; (circle (center radius circumference-color))
;; =
;; (circle (center radius circumference-color))
;; =
;; (make-circle structure number symbol)

;; 模板：
;; (define (fun-for-circle a-circle)
;; ...(circle-center a-circle)...
;; ...(circle-radius a-circle)...
;; ...(circle-circumference-color)...)

;; 使用模板fun-for-circle设计函数draw-a-circle。该
;; 函数的输入为一个circle结构体，其效果是在屏幕上绘制一个相应的圆。在进行函数测试前，请使用(start 300 300)创建画布。

;; 定义：
;; (define (draw-a-circle a-circle)
;; 定义模板绘制圆的参考
;;   (draw-circle (make-posn 12 13) 9 'red))

(define (draw-a-circle a-circle)
  (draw-circle (make-posn (center-undefined-Horizontal (circle-center a-circle))
                          (center-undefined-Vertical (circle-center a-circle)))
               (circle-radius a-circle)
               (circle-circumference-color a-circle)))
;; 测试（需要加载教学包draw.rkt）：
;; 画布300x300，
;; 定义C为：结构体 center,参数为横坐标30纵坐标30
;; 定义R为半径 30
;; 定义C-C为符号 'yellow
;; 执行函数(draw-a-circle a-circle)：
(start 300 300)
(define C (make-center 30 30))
(define R 30)
(define C-C 'yellow)
(draw-a-circle (make-circle C R C-C))
;; 期待值
;; #true
;; #true
;; 画面出现一个黄色的圆
```