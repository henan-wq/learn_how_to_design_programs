;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-2-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; equation1 : number -> boolean
;; 确定x是否是 方程x^2+2*x+1=0 的解
(define (equation1 x)
  (= (+ (* x x) (+ (* 2 x) 1)) 0))
;; (equation1 -1)
;; (equation1 +1)
;; #true
;; #false

;; 将下述等式转换为Scheme函数：
;; 1. 确定n是否是 方程4*n+2=62的解
(define (equation-1 n)
  (= (+ (* 4 n) 2) 62))

;; 2. 确定n是否是 方程2*n^2=102的解
(define (equation-2 n)
  (= (* 2 (* n n)) 102))

;; 3. 确定n是否是 方程4*n^2+6*n+2=462的解
(define (equation-3 n)
  (= (+ (* 4 (* n n)) (* 6 n) 2) 462))

;; 确定10 12 或14是否是等式的解。
(equation-1 10)
(equation-1 12)
(equation-1 14)

(equation-2 10)
(equation-2 12)
(equation-2 14)

(equation-3 10)
(equation-3 12)
(equation-3 14)

;; #false
;; #false
;; #false
;; #false
;; #false
;; #false
;; #true
;; #false
;; #false