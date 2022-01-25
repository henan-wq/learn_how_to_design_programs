;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-2-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define FIXED-COSTS 180)
(define OVERHEAD-PER-VIEWER .04)
(define AUDIENCE-BASE 120)
(define NUMBER-OF-AUDIENCE-INCREASE 15)
(define PRICE-REDUCTION .10)
(define TICKET-BASE 5.00)

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))
(define (revenue ticket-price)
  (* (attendanees ticket-price) ticket-price))
(define (cost ticket-price)
  (+ FIXED-COSTS
     (* OVERHEAD-PER-VIEWER (attendanees ticket-price))))
(define (attendanees ticket-price)
  (+ AUDIENCE-BASE
     (* (/ NUMBER-OF-AUDIENCE-INCREASE PRICE-REDUCTION) (- TICKET-BASE ticket-price))))

(profit 3)
(profit 4)
(profit 5)