# 习题6.4.2
假定一个时刻由3个数组成：时、分、秒。请给出结构体定义和数据定义，用来表示从午夜开始计算的时刻。  
答：  
```
;; timer is a structure:
;; (make-timer number number number)
(define-struct timer (hours minutes seconds))
(make-timer 0 0 10)
(make-timer 1 25 30)
```