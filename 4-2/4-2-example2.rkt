;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4-2-example2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; is-between-5-6? : number -> boolean
;; 确定n的值是否位于5和6之间（不包括5和6）
(define (is-between-5-6? n)
  (and (< 5 n) (< n 6)))
(is-between-5-6? 5)
(is-between-5-6? 5.5)
(is-between-5-6? 6)
;; #false
;; #true
;; #false