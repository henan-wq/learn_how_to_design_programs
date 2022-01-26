;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4-2-example3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; is-between-5-6-or-over-10? : number -> boolean
;; 确定n是否介于5和6之间（不包括5和6）或者大于等于10
(define (is-between-5-6-or-over-10? n)
  (or (is-between-5-6? n) (<= 10 n)))
(define (is-between-5-6? n)
  (and (< 5 n) (< n 6)))

(is-between-5-6-or-over-10? 5.5)
(is-between-5-6-or-over-10? 7)
(is-between-5-6-or-over-10? 10)
(is-between-5-6-or-over-10? 11)
;; true
;; false
;; true
;; true