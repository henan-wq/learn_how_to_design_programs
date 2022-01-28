# 习题 6.1.1 
手工计算下列表达式：
```
1. (distance-to-0 (make-posn 3 4))
2. (distance-to-0 (make-posn (* 2 3) (* 2 4)))
3. (distance-to-0 (make-posn 12 (- 6 1)))
```
假定**sqr**是单步执行的计算，请给所有的计算步骤，并将结果和使用DrRacket单步执行器所得的结果进行比较。
注：sqr是平方的意思。  
  
答：  
分别是 **5 10 13** 。
```
因为：
(define (distance-to-0 a-posn)
  (sqrt
    (+ (sqr (posn-x a-posn))
        (sqr (posn-y a-posn)))))

1.  
(define (distance-to-0 (make-posn 3 4))
  (sqrt
    (+ (sqr (posn-x (make-posn 3 4)))
        (sqr (posn-y (make-posn 3 4))))))

(define (distance-to-0 (make-posn 3 4))
  (sqrt
    (+ (sqr 3)
        (sqr 4))))

(define (distance-to-0 (make-posn 3 4))
  (sqrt
    (+ 9
        16)))

(define (distance-to-0 (make-posn 3 4))
  (sqrt
    25))

(define (distance-to-0 (make-posn 3 4))
  5)

2.  
(define (distance-to-0 (make-posn (* 2 3) (* 2 4)))
  (sqrt
    (+ (sqr (posn-x (make-posn (* 2 3) (* 2 4))))
        (sqr (posn-y (make-posn (* 2 3) (* 2 4)))))))

(define (distance-to-0 (make-posn (* 2 3) (* 2 4)))
  (sqrt
    (+ (sqr (posn-x (make-posn 6 8)))
        (sqr (posn-y (make-posn 6 8))))))

(define (distance-to-0 (make-posn (* 2 3) (* 2 4)))
  (sqrt
    (+ (sqr 6)
        (sqr 8))))

(define (distance-to-0 (make-posn (* 2 3) (* 2 4)))
  (sqrt
    (+ 36
        64)))

(define (distance-to-0 (make-posn (* 2 3) (* 2 4)))
  (sqrt
    100))

(define (distance-to-0 (make-posn (* 2 3) (* 2 4)))
  10)


3.  
(define (distance-to-0 (make-posn 12 (- 6 1)))
  (sqrt
    (+ (sqr (posn-x (make-posn 12 (- 6 1))))
        (sqr (posn-y (make-posn 12 (- 6 1)))))))

(define (distance-to-0 (make-posn 12 (- 6 1)))
  (sqrt
    (+ (sqr (posn-x (make-posn 12 5)))
        (sqr (posn-y (make-posn 12 5))))))

(define (distance-to-0 (make-posn 12 (- 6 1)))
  (sqrt
    (+ (sqr 12)
        (sqr 5))))

(define (distance-to-0 (make-posn 12 (- 6 1)))
  (sqrt
    (+ 144
        25)))

(define (distance-to-0 (make-posn 12 (- 6 1)))
  (sqrt
    169))

(define (distance-to-0 (make-posn 12 (- 6 1)))
  13)
```