# 习题4.2.1
将下面数轴上的5个区间转换成Scheme函数，这些函数接受一个数值，当数值位于区间内时返回`true`，否则返回`false`。  
```
1. 区间(3, 7):
;; is-between-3-7? : number -> boolean
(define (is-between-3-7? n)
  (and (< 3 n) (< n 7)))

2. 区间[3, 7]:
;; is-between-greater-than-or-equal-to-3-and-less-than-or-equal-to-7? :
;; number -> boolean
(define (is-g-e-3-and-l-e-7? n)
  (and (<= 3 n) (<= n 7)))

3. 区间[3, 9]:
;; is-between-greater-than-or-equal-to-3-and-less-than-or-equal-to-9? :
;; number -> boolean
(define (is-g-e-3-and-l-e-9? n)
  (and (<= 3 n) (<= n 9)))
 
4. 区间(1, 3)和(9, 11)的组合:
;; 大于等于1，小于等于3 或 大于等于9，小于11 : number -> boolean
(define (is-between-1-3-or-beteen-9-11? n)
  (or (and (< 1 n) (< n 3)) (and (< 9 n) (< n 11))))

5. 区间[1, 3]外的数：
;; not  大于等于1，小于等于3  的数 
;; 是不是也可以用小于1或大于3的数来表示？ : number  -> boolean
(define (is-not-g-e-1-and-l-e-3? n)
  (not (and (<= 1 n) (<= n 3))))
```
