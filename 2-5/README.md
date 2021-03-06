# 设计程序的步骤
## 理解程序的目的
程序设计的目标是创建一个接受输入并产生结果的机制。因此在开发程序时应该给每一个程序一个有意义的名字，并且说明输入数据和所产生的数据的类型，这称为程序的合约。比如程序`area-of-ring`的合约：
```
;; area-of-ring: number number -> number
注释 程序名:输入 输入 -> 输出

(define (area-of-ring outer inner) ...)
函数头部：(define(程序名 第一个输入的名字 第二个输入的名字) ...)

```
**提示：如果问题表述包含了数学公式，公式中不同变量的数目可能就是程序的输入数。**  
为了将给定的事实与要计算的数据分开，我们必须要仔细检查问题表述。  
问题表述中：
	- 固定数值（可能要在程序中出现）；
	- 稍后需要确定的未知数（输入）；
	- 问题表述中的询问或要求（提示了程序的名字）。

## 构造例子的重要性
```
;; area-of-ring: number number -> number
;; 计算一个半径为outer，洞半径为inner的圆环的面积
;; 例子：(area-of-ring 5 3)的结果为50.24
(define (area-of-ring outer inner) ...)
```

在编写程序体之前构造例子很重要：
1. 首先，它是唯一可靠的在程序测试中发现逻辑错误的途径。如果借助最终得到的程序来构造例子，有可能会轻信程序，**因为运行程序比预测它会做什么容易得多**。
2. 例子使我们思考数据计算过程，这对于将遇到的复杂程序体的设计是至关重要的。
3. 例子是用户说明的非正式表达。此后的程序读者会喜欢这些抽象概念的具体说明。

## 程序体
最后必须阐明程序题，即必须将函数头部的“...”替换成表达式。
```
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
    (area-of-disk inner)))
```
## 测试

