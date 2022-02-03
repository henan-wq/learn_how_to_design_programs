;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6-5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 数据分析和定义：
(define-struct student (last first teacher))
;; student是结构体他(make-student last first teacher)，
;; 其中last first teacher是符号

;; 合约： subst-teacher : student symbol -> student

;; 用途说明：如教师的名字为'Fritz，创建一个student结构体，把教师的名字替换为新的

;; 例子：
;; 第一种情况修改了
;; (subst-teacher (make-student 'Find 'Matthew 'Fritz) 'Elise)
;; =
;; (make-student 'Find 'Matthew 'Elise)
;; 第二种情况没有修改
;; (subst-teacher (make-student 'Find 'Matthew 'Amanda) 'Elise)
;; =
;; (make-student 'Find 'Matthew 'Amanda)

;; 模板：
;; (define (process-student a-student a-teacher)
;; ...(student-last a-student)...
;; ...(student-first a-student)...
;; ...(student-teacher a-student)...)

;; 定义
(define (subst-teacher a-student a-teacher)
  (cond
    [(symbol=? (student-teacher a-student) 'Fritz)
     (make-student (student-last a-student)
                   (student-first a-student)
                   a-teacher)]
    [else a-student]))

;; 测试
;; 测试会被修改的
(subst-teacher (make-student 'Find 'Matthew 'Fritz) 'Elise)
;; 预期值
(make-student 'Find 'Matthew 'Elise)
;; 测试不会被修改的
(subst-teacher (make-student 'Find 'Matthew 'Amanda) 'Elise)
;; 预期值
(make-student 'Find 'Matthew 'Amanda)