;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5-1-2) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; 考虑check-guess函数的合约：
;; check-guess : symbol symbol -> symbol
;; 函数例子：
;; (symbol=? (check-guess 0 0) 'Perfect)
;; (symbol=? (check-guess 10 0) 'TooLarge)
;; (symbol=? (check-guess 0 10) 'TooSmall)
;; 主体——条件：函数主体包含的cond表达式的数目应该与不同情况的数目一样，这里是三种情况
;; 我们根据情况写出程序框架：
;; (define (check-guess guess target)
;;   (cond
;;     [... ... ...]
;;     [... ... ...]
;;     [... ... ...]))
;; 接着阐明与每种情况相关的条件：
;; (= guess target) 'Perfect
;; (> guess target) 'TooLarge
;; (< guess target) 'TooSmall
;; 将它们加进函数，其结果为：
(define (check-guess guess target)
  (cond
    [(= guess target) 'Perfect]
    [(> guess target) 'TooLarge]
    [else 'TooSmall]))