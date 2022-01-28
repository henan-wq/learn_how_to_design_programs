# 习题 5.1.5
设计函数`check-color`，它是猜色游戏的主要部分，游戏参与者之一给两个方块挑选了两个颜色，它们是游戏的两个目标，游戏的另一个参与者猜测每个方块的颜色，第一个参与则对猜测给出下面四种可能的回答：
1. `'Perfect`,如果第一个目标与第一个猜测相符合，并且第二个目标与第二个猜测相符合；
2. `'OneColorAtCorrectPositon`，如果第一个目标与第一个猜测相符合或第二个目标与第二个猜测相复合；
3. `'OneColorOccurs`，猜测的颜色在某一方块出现；
4. `'NothingCorrect`，其他。  
游戏的第一个参与者的回答只能是上述4个答案之一。第二个参与者的目标是用尽可能少的次数猜出方块的颜色。  
函数`check-color`模仿第一个参与者的行为，它的参数是4种颜色，为简单起见，假定颜色的类型是符号，如`'red`，前两个参数是目标，后两个参数是猜测，函数的结果是上述4个答案之一。  
在对函数进行测试之后，使用教学软件的`master.ss`进行游戏，即计算`(master check-color)`并使用鼠标挑选颜色。
  
答：  
设计函数`check-color`，函数的输入分别是4个颜色，我们可以命名参数：target1 target2 guess1 guess2  
输出是回答。
考虑函数的合约：
```
;;  check-color : symbol symbol symbol symbol -> symbol
```
函数例子：
```
;; 情况一，全对
(symbol=? (check-color 'red 'green 'red 'green) 'Perfect)
;; 情况二 目标1与猜测1相等
(symbol=? (check-color 'red 'green 'red 'blue) 'OneColorAtCorrectPositon)
;; 或目标2与猜测2相等
(symbol=? (check-color 'red 'green 'blue 'green) 'OneColorAtCorrectPositon)
;; 情况三 目标1与猜测2相等
(symbol=? (check-color 'red 'green 'blue 'red) 'OneColorOccurs)
;; 或目标2与猜测1相等
(symbol=? (check-color 'red 'green 'green 'blue) 'OneColorOccurs)
;; 情况四 目标与猜测分别不等
(symbol=? (check-color 'red 'green 'blue 'yellow) 'NothingCorrect)
```

主体——条件：函数主体包含的`cond`表达式的数目与不同情况的数目一样，程序框架如下：
```
(define (check-color ... ... ... ...)
  (cond
    [... ... ...]
    [... ... ...]
    [... ... ...]))

```
接着阐明与每种情况相关的条件，条件是关于函数参数的断言，使用`scheme`关系表达式或自定义函数来表示，表达式如下：
```
(and (symbol=? target1 guess1) (symbol=? target2 guess2))
(or (symbol=? target1 guess1) (symbol=? target2 guess2))
(or (symbol=? target1 guess2) (symbol=? target2 guess1))
(...)
```
将上述两个步骤合并，并补充每一个`cond`子句在满足条件时会输出的`符号`：
```
(define (check-color ... ... ... ...)
  (cond
    [(and (symbol=? target1 guess1) (symbol=? target2 guess2)) 'Perfect]
    [(or (symbol=? target1 guess1) (symbol=? target2 guess2)) 'OneColorAtCorrectPositon]
    [(or (symbol=? target1 guess2) (symbol=? target2 guess1)) 'OneColorOccurs]
    [else 'NothingCorrect]))
```
主体——答案：最后，要确定对于每一个`cond`子句，函数产生什么结果，我们可以把函数例子放进来一起执行：
```
(define (check-color target1 target2 guess1 guess2)
  (cond
    [(and (symbol=? target1 guess1) (symbol=? target2 guess2)) 'Perfect]
    [(or (symbol=? target1 guess1) (symbol=? target2 guess2)) 'OneColorAtCorrectPositon]
    [(or (symbol=? target1 guess2) (symbol=? target2 guess1)) 'OneColorOccurs]
    [else 'NothingCorrect]))

;; 情况一，全对
(symbol=? (check-color 'red 'green 'red 'green) 'Perfect)
;; 情况二 目标1与猜测1相等
(symbol=? (check-color 'red 'green 'red 'blue) 'OneColorAtCorrectPositon)
;; 或目标2与猜测2相等
(symbol=? (check-color 'red 'green 'blue 'green) 'OneColorAtCorrectPositon)
;; 情况三 目标1与猜测2相等
(symbol=? (check-color 'red 'green 'blue 'red) 'OneColorOccurs)
;; 或目标2与猜测1相等
(symbol=? (check-color 'red 'green 'green 'blue) 'OneColorOccurs)
;; 情况四 目标与猜测分别不等
(symbol=? (check-color 'red 'green 'blue 'yellow) 'NothingCorrect)
;; 使用教学软件的`master.ss`进行游戏
(master check-color)
```