# 习题5.1.3
设计函数`check-guess3`，与习题5.1.2不同的是，该函数处理的是用户逐一输入的数，而不是最后形成的数值。  
为了简化问题，游戏仅使用3个数，因此`check-guess3`的输入为3个数和一个数`target`，其中第1个数是个位数，第2个数是十位数，第3个数是百位数，而`target`是一个随机选择的数值。  
`check-guess3`按照由3个数所确定的数与`target`的关系，产生下述答案之一：'TooSmall 'Perfect 或 'TooLarge 。  
游戏的其他部分仍然由`guess.ss`实现。欲进行游戏，在对函数进行完全测试之后计算`(guess-with-gui-3 check-guess3)`
  
答：
```
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
```