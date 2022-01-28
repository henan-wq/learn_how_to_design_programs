;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5-1-3) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; 考虑check-guess3 函数的合约
;; check-guess3 : number number number number -> symbol
;; 函数例子（可用于程序完成后测试函数是否有误，测试时请把函数例子放在定义函数的下方，否则会报错）
;; (symbol=? (check-guess3 1 2 3 321) 'Perfect)
;; (symbol=? (check-guess3 1 2 3 0) 'TooLarge)
;; (symbol=? (check-guess3 1 2 3 500) 'TooSmall)
;; 主体——条件：函数主体包含的cond表达式的数目应该与不同情况的数目一样
;; (define (check-guess3)
;;   (cond
;;     [... ... ...]
;;     [... ... ...]
;;     [... ... ...]))

;; 接着阐明与每种情况相关的条件，条件是关于函数参数的断言
;; (= guess target) 'Perfect
;; (> guess target) 'TooLarge
;; (< guess target) 'TooSmall

;; 考虑guess函数的合约
;; guess : number number number -> number
(define (guess single-digit decimal hundredth-digit)
  (+ single-digit (* 10 decimal) (* 100 hundredth-digit)))

;; 把它们加进函数，结果为：
(define (check-guess3 single-digit decimal hundredth-digit target)
  (cond
    [(= (guess single-digit decimal hundredth-digit) target) 'Perfect]
    [(> (guess single-digit decimal hundredth-digit) target) 'TooLarge]
    [else 'TooSmall]))

;; 函数例子
(symbol=? (check-guess3 1 2 3 321) 'Perfect)
(symbol=? (check-guess3 1 2 3 0) 'TooLarge)
(symbol=? (check-guess3 1 2 3 500) 'TooSmall)

;; 加载教学包guess.ss，进行游戏
(guess-with-gui-3 check-guess3)