;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-4-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (how-many a b c)
  (cond
    [(= a 0) false]
    [(> (* b b) (* 4 a c)) 2]
    [(= (* b b) (* 4 a c)) 1]
    [else 0]))
(how-many 0 1 1)
(how-many 2 1 3)
(how-many 1 2 1)
(how-many 1 10 1)
;; #false
;; 0
;; 1
;; 2