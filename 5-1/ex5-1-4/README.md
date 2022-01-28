# 习题 5.1.4
设计函数`what-kind`，它的参数为一个二次方程的系数a、b、c，该函数先确定方程是否退化，如果不是，在确定方程有多少个根，因此函数缠身下列4个符号之一：`'degenerate 'two 'one` 或 `'none`。  
提示：参阅习题4.4.4  
  
  答：
  ```
(define (what-kind a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (* b b) (* 4 a c)) 'two]
    [(= (* b b) (* 4 a c)) 'one]
    [else 'none]))
;; 函数例子
(what-kind 0 2 3)
(what-kind 1 100 2)
(what-kind 2 4 2)
(what-kind 8 1 5)
;; 输出应为：
;; 'degenerate
;; 'two
;; 'one
;; 'none

  ```