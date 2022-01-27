;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-4-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (A n)
  (* n 0.25 1/100))
(A 400)
(define (B n)
  (* n 0.50 1/100))
(define (C n)
  (* n 0.75 1/100))
(define (D n)
  (* n 1.0 1/100))

(define (pay-back n)
  (cond
    [(<= n 500) (A n)]
    [(<= n 1500) (+ (A 500) (B (- n 500)))]
    [(<= n 2500) (+ (A 500) (B 1000) (C (- n 500 1000)))]
    [else (+ (A 500) (B 1000) (C 1000) (D (- n 500 1000 1000)))]))

(pay-back 2000)
(pay-back 2600)
(pay-back 10000)