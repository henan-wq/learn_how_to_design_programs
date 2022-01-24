;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2-2-5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (f n)
  (+ (/ n 3) 2))
(f 2)
(f 5)
(f 9)

(define (f1 n)
  (+ (* n n) 10))
(f1 2)
(f1 9)

(define (f2 n)
  (+ (* (/ 1 2) (* n n)) 20))
(f2 2)
(f2 9)

(define (f3 n)
  (- 2 (/ 1 n)))
(f3 2)
(f3 9)