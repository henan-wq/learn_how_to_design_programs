;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-5-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; time结构体
;; 数据定义和结构体定义
;; a time is a structure
;; (make-time H M S)
;; where H M S are numbers
(define-struct time (H M S))
;; 数据例子
;; (make-time 7 20 0)

;; 数据分析和定义：
;; time是结构体(make-time H M S)，其中H M S是number。

;; 合约：time->seconds : time number number number -> number

;; 用途说明：如H读入12小时、M读入30分钟和S读入2秒，创建一个time结构体，输出时间单位为秒数。

;; 例子：
;; (time->seconds (make-time 12 30 2))
;; =
;; 45002

;; 模板一：
;; (define (time->seconds a-structure))
;; ...(time-H a-structure)...
;; ...(time-M a-structure)...
;; ...(time-S a-structure)...)

;; 定义：
(define (time->seconds a-structure)
  (+ (* 60 60 (time-H a-structure))
     (* 60 (time-M a-structure))
     (time-S a-structure)))

;; 测试：
(time->seconds (make-time 12 30 2))

;; 预期值
;; 45002