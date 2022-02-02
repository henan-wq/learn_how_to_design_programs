;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-4-3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 数据定义 symbol
;; 结构体定义 word
;; a word is a structure:
;; (make-word (f-letter s-letter t-letter))
;; where f-letter, s-letter and t-letter are symbols
(define-struct word (f-letter s-letter t-letter))

(make-word 'r 'e 'd)
(word-f-letter (make-word 'r 'e 'd))
(word-s-letter (make-word 'r 'e 'd))
(word-t-letter (make-word 'r 'e 'd))