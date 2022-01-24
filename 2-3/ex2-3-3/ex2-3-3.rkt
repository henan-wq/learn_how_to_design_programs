;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2-3-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (total-profit novisitors)
  (- (* novisitors 5) 20 (* novisitors 0.5)))

(total-profit 1)
(total-profit 5)
(total-profit 10)
(total-profit 20)
(total-profit 30)