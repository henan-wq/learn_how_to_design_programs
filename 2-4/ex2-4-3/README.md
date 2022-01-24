# 习题2.4.3
在DrRacket的交互窗口中计算下面文法上合法的Scheme表达式并阅读错误消息：
```
(+ 5 (/ 1 0))
(sin 10 20)
(somef 10)
```
答，错误消息如下：
```
>(+ 5 (/ 1 0))
/: division by zero

>(sin 10 20)
sin: expects only 1 argument, but found 2
sin：期望只有一个参数，但发现有两个参数。

>(somef 10)
somef: this function is not defined
somef：此函数未被定义。
```
