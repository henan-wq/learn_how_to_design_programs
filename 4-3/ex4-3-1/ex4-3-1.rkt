;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-3-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; 习题4.3.1

;; 关系操作符和参数之间需要用空格分隔，比如>n是错误的写法
;; cond子句应包含两个表达式：条件表达式condition和答案表达式answer
;; 条件表达式是一个含有参数的布尔表达式，若条件为真，则执行答案表达式


;; 第二个cond子句中，关系操作符>与参数n之间需要用空格分割
;; 第三个cond子句的缩进应与前面的cond子句保持一致
;; 修改后如下：
(define (ex-4-3-1-1 n)
  (cond
    [(< n 10) 20]
    [(> n 20) 0]
    [else 1]))

;; 第二个cond子句中，关系操作符>= <= 与参数n之间需要用空格分割
;; 第二个cond子句，缺少第二个表达式：答案表达式
;; 第三个cond子句的缩进应与前面的cond子句保持一致
;; 修改cond后如下：
(define (ex-4-3-1-2 n)
  (cond
    [(< n 10) 20]
    [(and (> n 20) (<= n 30)) 30]
    [else 1]))


;; 第一个cond子句应在 (cond 的下一行
;; 第二个cond子句，第一个表达式应是条件表达式：含参数的布尔布尔表达式
(define (ex-4-3-1-3 n)
  (cond
    [(< n 10) 20]
    [(< n 20) 30]
    [else 555]))
