;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exc-2-2-5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (f-1 n)
  (+ (* n n) 10))
(define (f-2 n)
  (+ (* (/ 1 2) (* n n)) 20))

(define (f-3 n)
  (- 2 (/ 1 n)))


(f-1 2)
(f-1 5)
(f-1 9)
(f-2 2)
(f-2 5)
(f-2 9)
(f-3 2)
(f-3 5)
(f-3 9)