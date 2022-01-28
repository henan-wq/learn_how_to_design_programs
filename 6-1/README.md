# 6.1 结构体
在DrRacket中，像素是一个`posn`结构体，包含两个数值  
使用`make-posn`创建一个**posn**结构体：  
`(make-posn 3 4)`
`(make-posn 8 6)`
`(make-posn 5 12)`
考虑计算给定的像素和原点间距离的函数，函数的合约、头部和用途说明可以简单地阐述为：
```
;; distance-to-0 : posn -> number
;; 计算一个 posn 和原点的距离
(define (distance-to-0 a-posn) ...)
```
输入可以是posn结构体，比如我们在上方创建过的结构体：
```
(define (distance-to-0 (make-posn 3 4)) ...)
```
接下来先不谈定义函数，而是看`distance-to-0`的部分：
```
;; 如果0是坐标之一，那么函数结果就是另一坐标值
  (distance-to-0 (make-posn 0 5))
= 5

  (distannce-to-0 (make-posn 7 0))
= 7
```
按几何学原理，坐标为x和y的点 离原点的距离为` 平方根(x^2 + y^2)`，因此：
```
  (distance-to-0 (make-posn 3 4))
= 5
```
## 如何在Scheme从结构体中提取值
对于**posn**结构体，有两个操作：`posn-x`和`posn-y`，前者提取x坐标，后者提取y坐标。  
posn-x、posn-y和make-posn之间的关系：
```
  (posn-x (make-posn 7 0))
= 7

  (posn-y (make-posn 7 0))
= 0
```
在定义区域输入：`(define a-posn (make-posn 7 0))`，并在交互区域输入以下内容，得到输出结果：
```
Welcome to DrRacket, version 8.3 [cs].
Language: Beginning Student [custom]; memory limit: 128 MB.
Teachpack: guess.rkt.
> (posn-x a-posn)
7
> (posn-y a-posn)
0
> 
```
## 总结
1. 函数的`a-posn`参数是一个**posn**结构体，该结构体包含2个数值，我们可以用`(posn-x a-posn)`和`(posn-y posn)`提取它们。  
2. 将这些知识添加到 函数定义框架：
```
(define (distance-to-0 a-posn)
  ... (posn-x a-posn) ...
  ... (posn-y a-posn) ...)
```
3. 使用框架和例子，函数的其余部分定义为：
```
(define (distance-to-0 a-posn)
  (sqrt
   (+ (sqr (posn-x a-posn))
      (sqr (posn-y a-posn)))))
```