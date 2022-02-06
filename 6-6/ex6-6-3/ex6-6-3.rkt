;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-6-3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define MP (make-posn 3 4))
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

;; 定义函数in-circle?
;; 像素点和圆心之间的距离是否小于或等于半径，若是则在圆内，若不是则在圆外。
;; sqr求平方 sqrt求平方根
;; 像素点与圆心之间的距离= (sqrt (+ (sqr (- x1 x2)) (sqr (- y1 y2))))

;; 横坐标之差
(define (sub-Horizontal a-circle a-posn)
  (- (center-undefined-Horizontal (circle-center a-circle))
     (posn-x MP)))
;; 纵坐标之差
(define (sub-Vertical a-circle a-posn)
  (- (center-undefined-Vertical (circle-center a-circle))
     (posn-y MP)))


(define (in-circle? a-circle a-posn sub-Horizontal sub-Vertical)
  (cond
    [(> (sqrt (+ (sqr sub-Horizontal)(sqr sub-Vertical))) (circle-radius a-circle)) 'TheStructureisOutsideTheCircle]
    [else 'TheStructureisInsideTheCircle]))
       

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

(in-circle? (make-circle C R C-C) (make-posn 3 4) sub-Horizontal sub-Vertical)