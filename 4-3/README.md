# 4.3 条件和条件函数
借助`cond`表达式，现在可以定义本节开始时提到的利率计算函数。  
假定存款额小于等于`1000`美元的银行利率定为`4%`。  
大于`1000`美元、小于等于`5000`美元定为`4.5%`，大于`5000`美元定为`5%`。  
显然，函数的输入为一个数值，而结果为另一个数值：
```
;; interest-rate : number -> number
;; 确定给定amount存款额的利率
;; (define (interest-rate amount) ...)
;; 例子：
;; (= (interest-rate 1000) .04)
;; (= (interest-rate 5000) .045)
;; (= (interest-rate 8000) .050)
;; (cond
;;   [(<= amount 1000) ...]
;;   [(<= amount 5000) ...]
;;   [else ...])
;; 定义如下：
(define (interest-rate amount)
  (cond
    [(<= amount 1000) 0.04]
    [(<= amount 5000) 0.045]
    [else 0.050]))
;; 例如：
(interest-rate 4000)
;; = (cond
;;     [(<= 4000 1000) 0.04]
;;     [(<= 4000 5000) 0.045]
;;     [else 0.050])
;; = 0.045
```
