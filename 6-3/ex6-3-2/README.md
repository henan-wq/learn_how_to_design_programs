# 习题6.3.2 考虑下列结构体定义：
```
(define-struct movie (title producer))
并计算下列表达式：
1.
(movie-title (make-movie 'ThePhantomMenace 'Lucas));
2.
(movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))。

假定x和y代表任意的符号，计算下列表达式：
1.
(movie-title (make-movie x y))
2.
(movie-producer (make-movie x y))
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

