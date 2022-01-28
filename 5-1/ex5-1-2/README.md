# 习题 5.1.2
设计函数`check-guess`。输入为两个数，即`guess`和`target`，根据它们的关系，函数产生输出`'TooSmall` `'Perfect` 或 `'TooLarge` 三者之一。  
该函数所实现的是二人猜谜数字游戏的一部分，在该游戏中，一方在0和99999之间随机挑选一个数，而另一方确定该数是哪一个数。  
对于每次猜测，前者的回答就是`check-guess`函数所给出的三种结果之一。  
  
> 函数`check-guess`和教学软件包`guess.ss`一起实现了猜数字游戏的一方。教学软件包随机选择一个数据并在计算机屏幕弹出一个窗口，用户可以在窗口中选择一个数据并提交，所提交的数据由`check-guess`进行检查。游戏时请将教学软件包中的`Language|Set teachpack`选项设置为`guess.ss`。在对该函数`check-guess`进行彻底检查之后，使用下述表达式进行计算：
```
(guess-with-gui check-guess)
```


答：  
```
;; 考虑check-guess函数的合约：
;; check-guess : symbol symbol -> symbol

;; 函数例子：
(symbol=? (check-guess 0 0) 'Perfect)
(symbol=? (check-guess 10 0) 'TooLarge)
(symbol=? (check-guess 0 10) 'TooSmall)

;; 主体——条件：函数主体包含的cond表达式的数目应该与不同情况的数目一样，这里是三种情况
;; 我们根据情况写出程序框架：
;; (define (check-guess guess target)
;;   (cond
;;     [... ... ...]
;;     [... ... ...]
;;     [... ... ...]))

;; 接着阐明与每种情况相关的条件：
(= guess target) 'Perfect
(> guess target) 'TooLarge
(< guess target) 'TooSmall

;; 将它们加进函数，其结果为：
(define (check-guess guess target)
  (cond
    [(= guess target) 'Perfect]
    [(> guess target) 'TooLarge]
    [else 'TooSmall]))

;; 函数例子：
(symbol=? (check-guess 0 0) 'Perfect)
(symbol=? (check-guess 10 0) 'TooLarge)
(symbol=? (check-guess 0 10) 'TooSmall)
```