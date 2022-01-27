;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-4-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (tax gross-income)
  (cond
    [(<= gross-income 240) (* 0 gross-income)]
    [(<= gross-income 480) (* (/ 15 100) gross-income)]
    [else (* (/ 28 100) gross-income)]))

(= (tax 0) (* 0 0))
(= (tax 240) (* 240 0))
(= (tax 480) (* 480 (/ 15 100)))
(= (tax 500) (* 500 (/ 28 100)))

(= (tax 200) (* 200 0))
(= (tax 300) (* 300 (/ 15 100)))
(= (tax 1000) (* 1000 (/ 28 100)))