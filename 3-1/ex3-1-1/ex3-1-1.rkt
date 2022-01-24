;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-1-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (attendees ticket-price)
  (+ 120 (* (- 5 ticket-price) (* 10 15))))

(define (cost ticket-price)
  (+ 180 (* 0.04 (attendees ticket-price))))

(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)
(profit 6)

(revenue 1)
(revenue 2)
(revenue 3)
(revenue 4)
(revenue 5)
(revenue 6)

(cost 1)
(cost 2)
(cost 3)
(cost 4)
(cost 5)
(cost 6)

(attendees 1)
(attendees 2)
(attendees 3)
(attendees 4)
(attendees 5)
(attendees 6)

