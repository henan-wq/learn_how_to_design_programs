;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-3-2-part2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 假定x和y代表任意的符号，计算下列表达式：
;; 1. (movie-title (make-movie x y))
(define-struct movie (title producer))
(define x 'ThisIsASymbol)
(define y 'ThisIsAlsoASymbol)
(movie-title (make-movie x y))
;; 输出应是 'ThisIsASymbol

;; 2. (movie-producer (make-movie x y))
;; 因为变量名 x y与上面的变量名 重复，在这个程序中两次定义同一个函数名会报错，故改之
;; 
(define xx 'xx)
(define yy 'yy)
(movie-producer (make-movie xx yy))
;; 输出应是 'yy