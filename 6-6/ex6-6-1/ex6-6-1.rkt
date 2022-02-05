;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-6-1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
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
(define-struct center (undefined-center))
;; radius is a structure. (make-radius undefined-center)，其中
;; undefined-center是number。

;; 合约： circle : structure number symbol -> undefined-type
;; 合约： center : number -> number
;; 用途说明：结构体circle包括圆心、半径和圆周的颜色，其中圆心也是一个结构体。

;; 例子：
;; (circle (center radius circumference-color))
;; =
;; (make-circle structure number symbol)

;; 模板：
;; (define (fun-for-circle a-circle)
;; ...(circle-center a-circle)...
;; ...(circle-radius a-circle)...
;; ...(circle-circumference-color)...)