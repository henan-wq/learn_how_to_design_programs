;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-3-2-part3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct star (last first instrument sales))
(define AAA (make-star 'ThePhantomMenace 'Lucas 'vocals 12200))
;; 定义一个函数，参数是一个结构体
;; 函数的用途是，输入一个结构体，输出还是这个结构体，但其中的字段值改变了
;; 字段值的改变就是函数的主体：也就是说函数内部就是定义字段值的表达式。
(define (increment-sales a-star)
  (make-star (star-last a-star)
               (star-first a-star)
               (star-instrument a-star)
               (+ (star-sales a-star) 20000)))
(increment-sales AAA)

;;输出
;; (make-star 'ThePhantomMenace 'Lucas 'vocals 32200)