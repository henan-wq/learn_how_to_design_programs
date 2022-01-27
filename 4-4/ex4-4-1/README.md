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
将它们加进函数，其最终结果为：
```
(define (interest-rate amount)
  (cond
    [(and (<= 0 amount) (<= amount 1000))]
    [(and (< 1000 amount) (<= amount 5000))]
    [else (< 5000 amount)]))
```
接着将上面的结果补充为：
```
(define (interest-rate amount)
  (cond
    [(and (<= 0 amount) (<= amount 1000)) 0.04]
    [(and (< 1000 amount) (<= amount 5000)) 0.045]
    [else 0.05]))
```
主体——答案：最后，要确定对于每一个`cond`子句，函数产生什么结果  
将以下内容输入到DrRacket中，执行确定结果：
```
(define (interest-rate amount)
  (cond
    [(and (<= 0 amount) (<= amount 1000)) 0.04]
    [(and (< 1000 amount) (<= amount 5000)) 0.045]
    [else 0.05]))

(= (interest-rate 0) 0.04)
(= (interest-rate 1000) 0.04)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.05)

(= (interest-rate 500) 0.04)
(= (interest-rate 3000) 0.045)
(= (interest-rate 6000) 0.05)
```
输出结果应为true，则我们的表达式无错误：
```
#true
#true
#true
#true
#true
#true
#true
> 
```
简化：完成了条件表达式的定义并对其进行测试后，有些表达式还有简化的空间。  
1. 在我们的习题中，amount的值总是大于等于0，一次第一个条件表达式可以简化为:`(<= amount 1000)`
2. 而且`cond`表达式是按顺序进行计算的，在对第二个表达式进行计算时，第一个表达式的计算结果肯定为`false`，即`amount`的值不会小于等于1000，那么第二个条件的左边变得多余，也是可以简化。  
简化修改后如下：
```
(define (interest-rate amount)
  (cond
    [(<= amount 1000) 0.04]
    [(<= amount 5000) 0.045]
    [else 0.05]))

(= (interest-rate 0) 0.04)
(= (interest-rate 1000) 0.04)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.05)

(= (interest-rate 500) 0.04)
(= (interest-rate 3000) 0.045)
(= (interest-rate 6000) 0.05)
```
最后补充计算年存款收益，完整程序如下：
```
;; 计算利率
(define (interest-rate amount)
  (cond
    [(<= amount 1000) 0.04]
    [(<= amount 5000) 0.045]
    [else 0.05]))

(= (interest-rate 0) 0.04)
(= (interest-rate 1000) 0.04)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.05)

(= (interest-rate 500) 0.04)
(= (interest-rate 3000) 0.045)
(= (interest-rate 6000) 0.05)

;; 计算年存款收益
(define (interest amount)
  (* amount (interest-rate amount)))

(= (interest 0) 0)
(= (interest 1000) 40)
(= (interest 5000) 225)
(= (interest 8000) 400)

(= (interest 500) 20)
(= (interest 3000) 135)
(= (interest 6000) 300)
```
