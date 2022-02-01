# 6.3 结构体定义
1. DrRacket中，posn的结构体定义：`(define-struct posn (x y))`，DrRacket对该结构体进行计算的结果是创建**3**个“操作”。
2. 程序设计者可以使用这些“操作”创建数据并在编程中使用：  
    - 构造器的前缀是`make-posn`：  
        - `make-posn`：构造器，用于创建一个`posn`结构体；  
    - 选择器的后缀是字段名，在这里是`-x`和`-y`：  
        - `posn-x`：选择器，用于提取 `x` 坐标；  
        - `posn-y`：选择器，用于提取 `y` 坐标。  
  
例子：  
1. 表达式`(define-struct entry(name zip phone))`  
2. 构造器前缀是`make-entry`，每个`entry`结构体有3个字段：`name`、`zip`和`phone`。
3. 也引入了3个新的选择器：`entry-name` `entry-zip`和`entry-phone`。
4. 输入有3个值：`(make-entry 'PeterLee 15270 '606-7771)`  
    > 整个例子就是创建了一个`entry`结构体，`name`字段的值是`'PeterLee`，`zip`字段的值`15270`，`phone`字段你的值是`'606-7771`。  
```
字段名           Name:           zip:            phone:
值               'PeterLee       15270           '606-7771
```
我们也可以给结构体取名字：`(define phonebook (make-entry 'PeterLee 15270 '606-7771))`  
就可以在Interaction窗口使用选择器提取结构体中任何一个字段中的数据。  
完整程序如下：  
```
;; 定义结构体,能看到结构体是entry，通过使用“操作”创建数据：字段名是name、zip和phone
(define-struct entry (name zip phone))

;; 分别给3个字段输入3个值，并给我们的结构体定义为一个函数
(define phonebook (make-entry 'PeterLee 15270 '606-7771))

;; 在Interaction窗口使用选择器提取结构体中任何一个字段中的数据。
(entry-name phonebook)
```
输出如下：  
```
Welcome to DrRacket, version 8.3 [cs].
Language: Beginning Student [custom]; memory limit: 128 MB.
Teachpack: draw.rkt.
'PeterLee
> 
```
一个很棒的例子：  
1. 比如创建明星的信息格式：`(define-struct star (last first instrument sales))`  
2. 创建star结构体：
```
(make-star 'Friedman 'Dan 'ukelele 19004)
(make-star 'Talcott 'Carolyn 'banjo 80000)
(make-star 'Harper 'Robert 'bagpipe 27860)
```
3. 可以选择一个称为E的明星结构体名字，`(star-first E)`  
完整程序如下：  
```
(define-struct star (last first instrument sales))
(define E (make-star 'Friedman 'Dan 'ukelele 19004))
(star-first E)
(star-last E)
```
输出如下：  
```
Welcome to DrRacket, version 8.3 [cs].
Language: Beginning Student [custom]; memory limit: 128 MB.
Teachpack: draw.rkt.
'Dan
'Friedman
> 
```