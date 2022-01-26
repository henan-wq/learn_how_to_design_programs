;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-2-4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; 习题2.2.1
(define (Fahrenheit->Celsius f)
  (/ (* (- f 32) 5) 9))
;; 测试表达式：
(Fahrenheit->Celsius 32)
;; 预期值：
0
;; 写成断言：
(= (Fahrenheit->Celsius 212) 100)


;; 习题2.2.2
(define (dollar->euro dollar)
  (* dollar 0.8834))
;; 测试表达式：
(dollar->euro 1)
;; 预期值：
0.8834
;; 写成断言：
(= (dollar->euro 1) 0.8834)


;; 习题2.2.3
(define (triangle a h)
  (* (/ 1 2) (* a h)))
;; 测试表达式：
(triangle 4 7)
;; 预期值：
14
;; 写成断言：
(= (triangle 4 7) 14)


;; 习题2.2.4
(define (convert3 units tens hundreds)
  (+ units (* 10 tens) (* 100 hundreds)))
;; 测试表达式
(convert3 1 2 3)
;; 预期值：
321
;; 写成断言
(= (convert3 1 2 3) 321)