# 习题6.3.2 考虑下列结构体定义：
```
(define-struct movie (title producer))
并计算下列表达式：
1.
(movie-title (make-movie 'ThePhantomMenace 'Lucas));
2.
(movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))。
```
答：  
`'ThePhantomMenace`
`'Lucas`  
解题过程（`ex6-3-2.rkt`）：  
```
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
;; (define-struct movie (title producer))
;; (movie-title (make-movie 'ThePhantomMenace 'Lucas))
;; (movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))
```
输出如下：
```
Welcome to DrRacket, version 8.3 [cs].
Language: Beginning Student [custom]; memory limit: 128 MB.
Teachpack: draw.rkt.
'ThePhantomMenace
'Lucas
> 
```
  
假定x和y代表任意的符号，计算下列表达式：
```
1.
(movie-title (make-movie x y))
2.
(movie-producer (make-movie x y))
```
答：  
解题过程如下（`ex6-3-2-part2.rkt`）：  
```
;; 假定x和y代表任意的符号，计算下列表达式：
;; 1. (movie-title (make-movie x y))
(define-struct movie (title producer))
(define x 'ThisIsASymbol)
(define y 'ThisIsAlsoASymbol)
(movie-title (make-movie x y))
;; 输出应是 'ThisIsASymbol

;; 2. (movie-producer (make-movie x y))
;; 因为变量名 x y与上面的变量名 重复，在这个程序中两次定义同一个函数名会报错，故改之
;; 
(define xx 'xx)
(define yy 'yy)
(movie-producer (make-movie xx yy))
;; 输出应是 'yy
```
给出描述movie-title、movie-producer和make-movie间关系的等式。  
函数的输入和输出都可以是结构体。假如要定义一个函数，记录某明星唱片的销售增量，函数输入为一个star结构体，输出也为一个star结构体，显而易见，这个输出的结构体除了销量值外，与输入结构体相同。现假定要将某明星的唱片销售量增加 20000 张。  
先使用合约、头部和用途说明给出函数的基本买哦书：
```
;; increment-sales : star -> star
;; 将star的销量值增加 20000
(define (increment-sales a-star) ...)
```
下面这个例子说明函数是如何处理star结构体的：  
```
(increment-sales (make-star 'Abba 'John 'vocals 12200))
```
结果应该是：
```
(make-star 'Abba 'John 'vocals 32200))
```
上面提到的3个star结构体也可以作为输入。  
`increment-sales`函数构造了一个新的start结构体`make-star`，为了完成此任务，它必须从`a-star`中提取数据。事实上，几乎所有`a-star`的数据都是函数所产生的新结构体中的数据，这表明`increment-sales`的定义应该包括如下表达式，用来提取`a-star`中的4个字段值：
```
(define (increment-sales a-star)
  ... (star-last a-star)...
  ... (star-first a-star)...
  ... (star-instrument a-star)...
  ... (star-sales a-star) ... )
```

