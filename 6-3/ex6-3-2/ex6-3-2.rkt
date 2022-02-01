;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-3-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 考虑下列结构体定义：

;; 定义了一个结构体movie
;;(define-struct movie (title producer))

;; 计算下列表达式：
;; 1. 
;; (movie-title (make-movie 'ThePhantomMenace 'Lucas))
;; 我们在本章之前的练习或本章的代码里，要计算一个结构体，
;; 第一步总是定义一个结构体和里面的字段名。
;; 第二步定义字段名的值，并把定义的列表定义成一个函数（例如并附上函数名A）；
;; 第三步直接执行代码：(结构体名-提取字段名 函数名A)
;; (define-struct movie (title producer))
;; (define A (make-movie 'ThePhantomMenace 'Lucas))
;; (movie-title A)

;; 实际上，我们可以不定义函数A：

;; 第一步还是定义一个结构体和里面的字段名。
;; 第二部直接执行代码：(结构体名-提取字段名 定义字段名的值)
;; (define-struct movie (title producer))
;; (movie-title (make-movie 'ThePhantomMenace 'Lucas))


;; 试试输入(make-movie 'ThePhantomMenace 'Lucas)  看看会得到什么？
;; 若将其定义为ZZ，执行ZZ看看会发生什么？

;; 输入(make-movie 'ThePhantomMenace 'Lucas)返回的是(make-movie 'ThePhantomMenace 'Lucas)
;; 输入ZZ也会返回的是(make-movie 'ThePhantomMenace 'Lucas)
;; (make-movie 'ThePhantomMenace 'Lucas)
;; (define ZZ (make-movie 'ThePhantomMenace 'Lucas))
;; ZZ

;; 计算下列表达式：
;; 2. 
;; (movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))
;; 返回 'Lucas
;; (define-struct movie (title producer))
;; (movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))

;; 完整程序如下：
(define-struct movie (title producer))
(movie-title (make-movie 'ThePhantomMenace 'Lucas))
(movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))