# 习题4.4.2

设计函数`tax`，输入为雇员的毛收入，输出为应付的税款。  
税率计算方法如下，毛收入小于等于240美元的，税率为0%，毛收入为240至480美元的，税率为15%，毛收入480美元以上的税率为28%。  
设计函数`netpay`，其按雇员的每周工作时数计算其净收入。净收入为毛收入减去应付的税款。假定工作报酬为每小时12美元。  
提示：当一个函数的定义变得太大或难以管理时，请使用辅助函数。  

答：  
考虑`tax`函数的合约：
```
;; tax : number -> number
;; 确定毛收入gross-income 的应付税款
(define (tax gross-income) ...)
;; 因为 应付税款 = 毛收入 * 税率
;; 该函数的输入是一个非负数，程序对于三种不同的情况给出不同的答案：
        0%              15%                     28%
[---------------](--------------](------------------------------>
0               240             480             960
```
函数例子：对于`tax`函数，选择0、240、480和500作为例子，也可以选择200、300和1000作为例子。
```
(= (tax 0) (* 0 0))
(= (tax 240) (* 240 0))
(= (tax 480) (* 480 (/ 15 100)))
(= (tax 500) (* 500 (/ 28 100)))

(= (tax 200) (* 200 0))
(= (tax 300) (* 300 (/ 15 100)))
(= (tax 1000) (* 1000 (/ 28 100)))
```
主体——条件：函数主体包含的`cond`表达式的数目应该与不同情况的数目一样：
```
(define (tax gross-income)
  (cond
    [... ...]
    [... ...]
    [... ...]))
```
接着阐明于每种情况相关的条件，条件是关于函数参数的断言，使用`scheme`关系表达式来表示：
```
(and (<= 0 gross-income) (<= gross-income 240))
(and (< 240 gross-income) (<= gross-income 480))
(< 480 gross-income)
```
把它们加进函数，最终结果：
```
(define (tax gross-income)
  (cond
    [(and (<= 0 gross-income) (<= gross-income 240)) ...]
    [(and (< 240 gross-income) (<= gross-income 480)) ...]
    [else ...]))
```
主体——答案：最后要确定每一个`cond`子句，函数产生什么结果。  
```
(define (tax gross-income)
  (cond
    [(and (<= 0 gross-income) (<= gross-income 240)) (* 0 gross-income)]
    [(and (< 240 gross-income) (<= gross-income 480)) (* (/ 15 100) gross-income)]
    [else (* (/ 28 100) gross-income)]))

(= (tax 0) (* 0 0))
(= (tax 240) (* 240 0))
(= (tax 480) (* 480 (/ 15 100)))
(= (tax 500) (* 500 (/ 28 100)))

(= (tax 200) (* 200 0))
(= (tax 300) (* 300 (/ 15 100)))
(= (tax 1000) (* 1000 (/ 28 100)))
```
输出结果应为true，则我们的表达式无错误：
```
Welcome to DrRacket, version 8.3 [cs].
Language: Beginning Student [custom]; memory limit: 128 MB.
Teachpack: convert.rkt.
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
```
(define (tax gross-income)
  (cond
    [(<= gross-income 240) (* 0 gross-income)]
    [(<= gross-income 480) (* (/ 15 100) gross-income)]
    [else (* (/ 28 100) gross-income)]))

(= (tax 0) (* 0 0))
(= (tax 240) (* 240 0))
(= (tax 480) (* 480 (/ 15 100)))
(= (tax 500) (* 500 (/ 28 100)))

(= (tax 200) (* 200 0))
(= (tax 300) (* 300 (/ 15 100)))
(= (tax 1000) (* 1000 (/ 28 100)))
```

考虑`netpay`函数的合约：
```
;; netpay : number -> number
;; 确定相应的毛收入gross-income的净收入
(define (netpay gross-income) ...)
;; 因为 净收入 = 毛收入 - 应付税款
;; 因为 毛收入 = 每周工作时数 * 每小时工作报酬
;; 因为 每周工作时数 = 每天工作时数 * 工作日数
```

假设每周的工作日是5天，每天工作时数是8，每周工作时数是40
```
(define (tax gross-income)
  (cond
    [(<= gross-income 240) (* 0 gross-income)]
    [(<= gross-income 480) (* (/ 15 100) gross-income)]
    [else (* (/ 28 100) gross-income)]))


(define (gross-income hours-worked-per-day)
  (* 12 (* hours-worked-per-day 5)))

(define (netpay gross-income)
  (- gross-income (tax gross-income)))

(netpay (gross-income 8))
```