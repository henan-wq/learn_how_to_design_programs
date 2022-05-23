;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname class-2-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 2.2 变量和程序

;; 变量是什么？
;; 变量是一个未知数的占位符（placeholder）。

;; 变量有什么用处？
;; 在代数中，可以用含变量的表达式阐明两个数之间的关系。

;; 例子：一个半径为r的圆盘的近似面积为：  3.14 x （y的二次方）
;; 式子中r是任意的正数。如果圆盘的半径为5，则可以先将表达式中的r替换为5，
;; 再对所得的表达式进行计算： 3.14 x 5的平方 = 3.14 x 25 = 78.5

;; 一个大型的程序可能包含多个以某种方式组合起来的小程序，因此程序设计者在
;; 编写程序的时候如何给它们命名是非常重要的。
;; 对于上述程序，合适的名字是area-of-disk，使用该名字计算圆盘面积的程序如下：
(define (area-of-disk r)
  (* 3.14 (* r r)))

(area-of-disk 5) ;; 其意为将area-of-disk应用于数值5。

;

;; 圆环的面积是外盘的面积减去内盘的面积，这意味着该程序需要两个未知量：
;; 外盘的半径outer和内盘的半径inner，因此计算圆环可以写成：
(define (area-of-ring outer inner) ;; 该程序有两个输入：outer和inner
  (- (area-of-disk outer)
     (area-of-disk inner)))
;; 该程序结果(area-of-disk outer)与(area-of-disk inner)之差。
;; 该area-of-ring使用了Scheme的操作（减法）和前面定义的函数（area-of-disk函数）。
;; area-of-disk会先拷贝表达式：(* 3.14 (* r r)))，再将其中的变
;; 量替换为输入的数值。