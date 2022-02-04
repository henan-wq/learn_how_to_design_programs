# 习题6.5.1 为输入是下述结构体的函数设计模板：
```
1.
(define-struct movie (title producer))
2.
(define-struct boyfriend (name hair eyes phone))
3.
(define-struct cheerleader (name number))
4.
(define-struct CD (artist title price))
5.
(define-struct sweater (material size producer))
```
答：  
```
1.
(define-struct movie (title producer))
模板：
(define (process-name a-movie a-producer)
...(movie-title a-movie)...
...(movie-producer a-movie)...)

2.
(define-struct boyfriend (name hair eyes phone))
模板：
(define (process-name a-boyfriend a-phone)
...(boyfriend-name a-boyfriend)...
...(boyfriend-hair a-boyfriend)...
...(boyfriend-eyes a-boyfriend)...
...(boyfriend-phone a-boyfriend)...)

3.
(define-struct cheerleader (name number))
模板：
(define (process-function a-cheerleader a-number)
...(cheerleader-name a-cheerleader)...
...(cheerleader-number a-cheerleader)...)

4.
(define-struct CD (artist title price))
模板：
(define (process-function a-CD a-price)
...(CD-artist a-CD)...
...(CD-title a-CD)...
...(CD-price a-CD)...)

5.
(define-struct sweater (material size producer))
模板：
(define (process-function a-sweater a-size)
...(sweater-material a-sweater)...
...(sweater-size a-sweater)...
...(sweater-producer a-sweater)...)
```