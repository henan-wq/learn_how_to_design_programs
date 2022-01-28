;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5-1-4) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
(define (what-kind a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (* b b) (* 4 a c)) 'two]
    [(= (* b b) (* 4 a c)) 'one]
    [else 'none]))
;; 函数例子
(what-kind 0 2 3)
(what-kind 1 100 2)
(what-kind 2 4 2)
(what-kind 8 1 5)
;; 输出应为：
;; 'degenerate
;; 'two
;; 'one
;; 'none
