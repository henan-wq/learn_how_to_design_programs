# 笔记
1. 利润是收入和成本之差。
2. 收入由票房唯一确定，它是票价乘以观众数。
3. 成本由固定成本（180美元）与依赖于观众数的变动成本两部分组成。
4. 观众数和票价之间的关系。
接着对上述依赖关系给出函数表示。  

下面是以合约、函数头部和用途说明开始的函数`profit`（利润）的描述：
```
;; profit: number -> number
;; 对于给定ticket-price，利润是收入和成本之差
(define (profit ticket-price) ...)
```
利润之所以依赖于票价是因为收入和成本都依赖于票价。  
下面是其他三个函数的说明：
```
;; revenue : number -> number
;; 对于给定ricket-price，计算收入
(define (revenue ticket-price) ...)
;; cost : number -> number
;; 对于给定ticket-price, 计算支出
(define (cost ticket-price)) ...)
;; attendees : number -> number
;; 对于给定ticket-price，计算观众数
(define (attendees ticket-price) ...)
