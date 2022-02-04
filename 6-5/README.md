# 6.5 设计处理符合数据的函数
> 简单原则：如果某个对象的描述需要若干种信息则使用结构体。  
1. 如果不使用结构体，程序设计者可能很快会对哪些信息属于哪种对象失去线索，当编写大量数据的大型函数时，尤其如此。  
2. 程序设计者可以使用结构体定义和数据定义来组织函数。在设计函数的时候可以使用模板，正如本节和以后章节中所看到那样，模板和函数定义相匹配，这是函数设计中的基本要素。  
  
完整例子如下：  
```
;; 数据分析和定义：
(define-struct student (last first teacher))
;; student 是结构体(make-student last first teacher)，其中last first teacher是符号

;; 合约： subst-teacher : student symbol -> student

;; 用途说明：如教师的名字为'Fritz，创建一个student结构体，把教师的名字替换为新的

;; 例子：
;; (subst-teacher (make-student 'Find 'Matthew 'Fritz) 'Elise)
;; = 
;; (make-student 'Find 'Matthew 'Elise)
;; (subst-teacher (make-student 'Fien 'Matthew 'Amanda) 'Elise)
;; =
;; (make-student 'Find 'Matthew 'Amanda)
;; 模板：
;; (define (process-student a-student a-teacher)
;; ...(student-last a-student)...
;; ...(student-first a-student)...
;; ...(student-teacher a-student)...)
;; 定义：

(define (subst-teacher a-student a-teacher)
  (cond
    [(symbol=? (student-teacher a-student) 'Fritz)
     (make-student (student-last a-student)
                   (student-first a-student)
                   a-teacher)]
    [else a-student]))


;; 测试：
(subst-teacher (make-student 'Find 'Matthew 'Fritz) 'Elise)
;; 预期值：
(make-student 'Find 'Matthew 'Elise)

(subst-teacher (make-student 'Find 'Matthew 'Amanda) 'Elise)
;; 预期值：
(make-student 'Find 'Matthew 'Amanada)
```
---
例子：下面考虑两个读入*student*结构体的函数。第一个函数是*check*，如果教师的名字等于*a-teacher*，该函数返回学生的名字，否则返回`'none`：
```
(check (make-student 'Wilson 'Fritz 'Harper) 'Harper)
;; 预期值
'Wilson
(check (make-student 'Wilson 'Fritz 'Lee) 'Harper)
;; 预期值：
'none
```
第二个函数*transfer*，在它返回的结构体中，*teacher*字段的值为*a-teacher*，除了*teacher*字段以外，其余成分的值和`a-student`一样：
```
(transfer (make-student 'Wilson 'Fritz 'Harper) 'Lee)
;; 预期值
(make-student 'Woops 'Helen 'Fisler)
```
---
