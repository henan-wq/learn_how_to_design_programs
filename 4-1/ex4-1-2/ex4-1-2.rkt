;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-1-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define x 4)
(> x 3)
(and (> 4 x) (> x 3))
(= (* x x) x)
;; true
;; false
;; false

(define y 2)
(> y 3)
(and (> 4 y) (> y 3))
(= (* y y) y)
;; false
;; false
;; false

(define z 7/2)
(> z 3)
(and (> 4 z) (> z 3))
(= (* z z) z)
;; true
;; true
;; false