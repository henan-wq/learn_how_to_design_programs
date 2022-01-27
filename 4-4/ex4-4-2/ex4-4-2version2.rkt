;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-4-2version2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (tax gross-income)
  (cond
    [(<= gross-income 240) (* 0 gross-income)]
    [(<= gross-income 480) (* (/ 15 100) gross-income)]
    [else (* (/ 28 100) gross-income)]))


(define (gross-income hours-worked-per-day)
  (* 12 (* hours-worked-per-day 5)))

(define (netpay gross-income)
  (- gross-income (tax gross-income)))

(netpay (gross-income 8))