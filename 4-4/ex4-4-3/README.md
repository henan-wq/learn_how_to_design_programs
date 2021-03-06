# 习题 4.4.3
一些信用卡公司对顾客一年的总消费额会给出一小部分奖赏，其中某一公司的奖赏表为：  
1. 最初500美元消费的奖赏为 **.25%**；
2. 接着的1000美元，即500美元到1500美元，消费的奖励为 **.50%**；
3. 接着的1000美元，即1500美元到2500美元，消费的奖励为 **.75%**；
4. 多于2500美元以上的奖励率为**1.0%**。  
> 由此，若一个顾客一年使用信用卡的总消费额为400美元，其奖励金额就是于0.25 * 1/100 * 400，即1美元；而消费1400美元的奖励金额为5.75美元，其等于前500美元消费的奖励金额 0.25 * 1/100 *500 = 1.25，加上另外900美元的奖励金额0.50 * 1/100 * 900 = 4.50 美元。
分别手工计算消费为**2000**美元和**2600**美元时的奖励金额。定义函数`pay-back`，输入为**一年的消费额**，结果为相应的**奖励金额**。  
---
答：  
手工计算2000美元和2600美元的消费：
```
2000美元的奖励：500*.25%+1000*.5%+500*.75% = 10
2600美元的奖励：500*.25%+1000*.5%+1000*.75%+1000*1% = 14.75
```

;; 定义函数A B C D和pay-back
```
(define (A n)
  (* n 0.25 1/100))
(A 400)
(define (B n)
  (* n 0.50 1/100))
(define (C n)
  (* n 0.75 1/100))
(define (D n)
  (* n 1.0 1/100))

(define (pay-back n)
  (cond
    [(<= n 500) (A n)]
    [(<= n 1500) (+ (A 500) (B (- n 500)))]
    [(<= n 2500) (+ (A 500) (B 1000) (C (- n 500 1000)))]
    [else (+ (A 500) (B 1000) (C 1000) (D (- n 500 1000 1000)))]))

(pay-back 2000)
(pay-back 2600)
(pay-back 10000)

;; 没有看答案就做出来了……
```
