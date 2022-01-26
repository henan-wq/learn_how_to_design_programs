;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-2-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; 1. 区间(3, 7):
;; is-between-3-7? : number -> boolean
(define (is-between-3-7? n)
  (and (< 3 n) (< n 7)))
;; (is-between-3-7? 2)
;; (is-between-3-7? 3)
;; (is-between-3-7? 4)
;; (is-between-3-7? 7)
;; (is-between-3-7? 8)
;; false
;; false
;; true
;; false
;; false

;; 2. 区间[3, 7]:
;; is-between-greater-than-or-equal-to-3-and-less-than-or-equal-to-7? :
;; number -> boolean
(define (is-g-e-3-and-l-e-7? n)
  (and (<= 3 n) (<= n 7)))
;; (is-g-e-3-and-l-e-7? 2)
;; (is-g-e-3-and-l-e-7? 3)
;; (is-g-e-3-and-l-e-7? 4)
;; (is-g-e-3-and-l-e-7? 5)
;; (is-g-e-3-and-l-e-7? 6)
;; (is-g-e-3-and-l-e-7? 7)
;; (is-g-e-3-and-l-e-7? 8)
;; false
;; true
;; true
;; true
;; true
;; true
;; false




;; 3. 区间[3, 9]:
;; is-between-greater-than-or-equal-to-3-and-less-than-or-equal-to-9? :
;; number -> boolean
(define (is-g-e-3-and-l-e-9? n)
  (and (<= 3 n) (<= n 9)))
; (is-g-e-3-and-l-e-9? 2)
; (is-g-e-3-and-l-e-9? 3)
; (is-g-e-3-and-l-e-9? 5)
; (is-g-e-3-and-l-e-9? 9)
; (is-g-e-3-and-l-e-9? 10)
; false
; true
; true
; true
; false

;; 4. 区间(1, 3)和(9, 11)的组合:
;; 大于等于1，小于等于3 或 大于等于9，小于等于11 : number -> boolean
(define (is-between-1-3-or-beteen-9-11? n)
  (or (and (< 1 n) (< n 3)) (and (< 9 n) (< n 11))))
; (is-between-1-3-or-beteen-9-11? 0.5)
; (is-between-1-3-or-beteen-9-11? 2)
; (is-between-1-3-or-beteen-9-11? 3)
; (is-between-1-3-or-beteen-9-11? 8)
; (is-between-1-3-or-beteen-9-11? 10)
; (is-between-1-3-or-beteen-9-11? 11)
; false
; true
; false
; false
; true
; false

;; 5. 区间[1, 3]外的数：
;; not  大于等于1，小于等于3  的数
;; 是不是也可以用小于1或大于3的数来表示？ : number  -> boolean
(define (is-not-g-e-1-and-l-e-3? n)
  (not (and (<= 1 n) (<= n 3))))
; (is-not-g-e-1-and-l-e-3? 0)
; (is-not-g-e-1-and-l-e-3? 1)
; (is-not-g-e-1-and-l-e-3? 2)
; (is-not-g-e-1-and-l-e-3? 3)
; (is-not-g-e-1-and-l-e-3? 4)
;; true
;; false
;; false
;; false
;; true