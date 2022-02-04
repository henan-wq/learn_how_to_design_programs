;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6-5-part-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 例子：下面考虑两个读入*student*结构体的函数。第一个函数是*check*，
;; 如果教师的名字等于*a-teacher*，该函数返回学生的名字，否则返回`'none`：

;; 数据分析和定义：
(define-struct student (last first teacher))
;; student 是结构体(make-student last first teacher)，
;; 其中last first teacher是符号

;; 合约：check : student symbol -> symbol

;; 用途说明：如教师的名字与结构体的名字相同，如都是'Harper，
;; 则返回结构体中学生的名字，否则返回'none。

;; 例子：
;; (check (make-student 'Wilson 'Fritz 'Harper) 'Harper)
;; =
;; 'Wilson
;; (check (make-student 'Wilson 'Fritz 'Lee) 'Harper)
;; =
;; 'none
;; 模板：
;; (deifne (process-student a-student a-teacher)
;; ...(student-last a-student)...
;; ...(student-first a-student)...
;; ...(student-teacher a-student)...)
;; 定义：
(define (check a-student a-teacher)
  (cond
    [(symbol=? (student-teacher a-student) a-teacher)
     (student-last a-student)]
    [else 'none]))
;; 测试：
(check (make-student 'Wilson 'Fritz 'Harper) 'Harper)
;; 预期值
;; 'Wilson
(check (make-student 'Wilson 'Fritz 'Lee) 'Harper)
;; 预期值
;; 'none