# 习题 4.4.1
设计函数interest。与interest-rate类似，函数的输入为存款额。  
不同的是，计算结果是实际的年存款收益。  
假定银行规定存款额小于等于1000元时，利率4%；  
小于等于5000元时，利率为4.5%；  
大于5000元时，利率为5%。    

答：
考虑interest函数的合约：
```
;; interest : number -> number
;; 确定存款额amount（大于等于零）的年存款收益
(define (interest amount) ...)
;; 因为年存款收益 = 存款额 * 利率
```
考虑interest-rate函数的合约：
```
;; interest-rate ： number -> number
;; 确定相应存款额amount（大于等于零）的利率
(define (interest-rate amount) ...)
;; 该函数的输入是一个非负数，程序对于3种不同的情况给出不同的答案：

    4%                  4.5%                        5%
[-------](------------------------------](------------------------------->
0	1000		3000		5000			8000

```
函数例子：对于interest-rate函数，选择0、1000、5000作为例子。也要选择500、3000、6000作为例子。
```
(= (interest-rate 0) 0.04)
(= (interest-rate 1000) 0.04)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.05)

(= (interest-rate 500) 0.04)
(= (interest-rate 3000) 0.045)
(= (interest-rate 6000) 0.05)
```
主体——条件：函数主体包含的`cond`表达式的数目应该与不同情况的数目一样，该要求提示以下程序框架：
```
(define (interest-rate amount)
  (cond
    [... ...]
    [... ...]
    [... ...]))
```
接着阐明与每种情况相关的条件，条件是关于函数参数的断言，使用`Scheme`关系表达式或自定义的函数来表示。  
将数周区间转换成如下的表达式：
```
(and (<= 0 amount) (<= amount 1000))
(and (< 1000 amount) (<= amount 5000))
(< 5000 amount)
```

