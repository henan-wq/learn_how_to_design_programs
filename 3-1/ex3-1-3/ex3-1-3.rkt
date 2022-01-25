;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-1-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
(define (revenue ticket-price)
  (* (attendanees ticket-price) ticket-price))
(define (cost ticket-price)
  (+ 180
     (* .04 (attendanees ticket-price))))
(define (attendanees ticket-price)
  (+ 120
     (* (/ 15 .10) (- 5.00 ticket-price))))

(profit 3)
(profit 4)
(profit 5)