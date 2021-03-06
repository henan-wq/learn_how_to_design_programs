;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname test) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 数有多种形式，整数、复数、分数（也称有理数）和实数是最常见的数字：
;; 5  -5  2/3  17/3  #i1.4142135623731


;; Scheme中对数进行加减乘除运算：
(+ 5 5)
(+ -5 5)
(+ 5 -5)
(- 5 5)
(* 3 4)
(/ 8 12)
;; 输出结果如下：
;; 10
;; 0
;; 0
;; 0
;; 12
;; 0.6


;; 嵌套使用Scheme表达式：
(* (+ 2 2) (/ (* (+ 3 5) (/ 30 10)) 2))
;; = (* 4 (/ (* 8 3) 2))
;; = (* 4 (/ 24 2))
;; = (* 4 12)
;; = 48

;; 每个表达式的形式皆为：
;; (operation A ... B)

;; 别忘了，总是先乘除后加减：
;; 3+4*5

;; 除了常见的简单数学运算符外，Scheme还提供了一整套数学运算函数，例子如下：
;; 1. (sqrt A)计算根号A；
;; 2. (expt A B)计算A的B次方；
;; 3. (remainder A B)计算整数A除以整数B的余数；
;; 4. (log A)计算A的自然对数；
;; 5. (sin A)计算弧度A的正弦值；
;; 如果怀疑一个基本运算是否存在或欲了解其使用方式，可以在DrScheme上测试。


;; 关于数：Sheme可以使用产生精确结果的基本操作对j精确整数和有理数进行计算。
;; 因此，(/ 44 14)的结果是(/ 22 7)
;; 注：我在DrRacket中得到的结果是：3.142857
;; ------------------------------------
;; (/ 44 14)
;; = 3.142857
;; (/ 22 7)
;; = 3.142857
;; ------------------------------------
;; 涉及实数的时候，Scheme在精度上做了折中考虑：
;; 2的平方根是一个实数而不是一个有理数，Scheme会使用非精确数表示它：
(sqrt 2) ;; = #i1.4142135623730951
;; #i警告程序设计者，计算结果是真正数值的一个近似表示。


;; 一旦一个非精确数成为计算的一部分，计算过程将以近似的方式进行，如：
(- #i1.0 #i0.9) ;; = #i0.09999999999999998
;; 而：
(- #i1000.0 #i999.9) ;; = #i0.10000000000002274
