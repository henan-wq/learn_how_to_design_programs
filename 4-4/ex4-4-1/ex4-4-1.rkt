;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-4-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (interest-rate amount)
  (cond
    [(and (<= 0 amount) (<= amount 1000)) 0.04]
    [(and (< 1000 amount) (<= amount 5000)) 0.045]
    [else 0.05]))

(= (interest-rate 0) 0.04)
(= (interest-rate 1000) 0.04)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.05)

(= (interest-rate 500) 0.04)
(= (interest-rate 3000) 0.045)
(= (interest-rate 6000) 0.05)
