;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6-5-part-3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 第二个函数transfer，在它返回的结构体中，teacher字段的值为a-teacher，
;; 除了teacher字段以外，其余成分的值和a-student一样
;; 数据分析和定义：
(define-struct student (last first teacher))
;; student 是结构体(make-student l f t)，其中l、f和t是符号
;; 合约：process-teacher : student symbol -> student
;; 用途说明：如教师的名字为'Lee,创建一个student结构体，把教师的名字替换为‘Lee

;; 例子：
;; (transfer (make-student 'Wilson 'Fritz 'Harper) 'Lee)
;; =
;; (make-student 'Wilson 'Fritz 'Lee)
;; (transfer (make-student 'Wilson 'Fritz 'Tom) 'Zoom)
;; =
;; (make-student 'Wilson 'Fritz 'Zoom)
;; 模板：
;; (define (transfer a-student a-teacher)
;; ...(student-last a-student)...
;; ...(student-first a-student)...
;; ...(student-teacher a-student)...)
;; 定义：
(define (transfer a-student a-teacher)
  (cond
    [(symbol=? (student-teacher a-student) a-teacher) a-student]
    [else (make-student (student-last a-student)
                        (student-first a-student)
                        a-teacher)]))
;; 测试：
(transfer (make-student 'Wilson 'Fritz 'Harper) 'Lee)
;; 预期值：
;; (make-student 'Wilson 'Fritz 'Lee)



;; 书里的方法：
(define (transfer-2 a-student a-teacher)
  (make-student (student-last a-student)
                (student-first a-student)
                a-teacher))
;; 测试：
(transfer-2 (make-student 'Wilson 'Fritz 'Tom) 'Zoom)
;; 预期值：
;; (make-student 'Wilson 'Fritz 'Zoom)