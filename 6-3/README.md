# 6.3 结构体定义
1. DrRacket中，posn的结构体定义：`(define-struct posn (x y))`，DrRacket对该结构体进行计算的结果是创建**3**个“操作”。
2. 程序设计者可以使用这些“操作”创建数据并在编程中使用：
    1. `make-posn`：构造器，用于创建一个`posn`结构体；
    2. `posn-x`：选择器，用于提取 `x` 坐标；
    3. `posn-y`：选择器，用于提取 `y` 坐标。