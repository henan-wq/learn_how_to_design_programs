# 习题4.2.3
包含一个变量的数学等式是关于一个未知数的断言。如二次方程
```
x^2+2*x+1=0
```
是关于未知数`x`的一个断言。对于`x=-1`，该断言成立：
```
x^2+2*x+1=(-1)^2+2*(-1)+1=1-2+1=0
```
题目与解答过程：
```
;; equation1 : number -> boolean
;; 确定x是否是 方程x^2+2*x+1=0 的解
(define (equation1 x)
  (= (+ (* x x) (+ (* 2 x) 1)) 0))
;; (equation1 -1)
;; (equation1 +1)
;; #true
;; #false

;; 将下述等式转换为Scheme函数：
;; 1. 确定n是否是 方程4*n+2=62的解
(define (equation-1 n)
  (= (+ (* 4 n) 2) 62))

;; 2. 确定n是否是 方程2*n^2=102的解
(define (equation-2 n)
  (= (* 2 (* n n)) 102))

;; 3. 确定n是否是 方程4*n^2+6*n+2=462的解
(define (equation-3 n)
  (= (+ (* 4 (* n n)) (* 6 n) 2) 462))

;; 确定10 12 或14是否是等式的解。
(equation-1 10)
(equation-1 12)
(equation-1 14)

(equation-2 10)
(equation-2 12)
(equation-2 14)

(equation-3 10)
(equation-3 12)
(equation-3 14)

;; #false
;; #false
;; #false
;; #false
;; #false
;; #false
;; #true
;; #false
;; #false
```
