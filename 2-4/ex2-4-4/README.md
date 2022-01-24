# 习题2.4.4
在DrRacket的definitions窗口中输入下面文法上正确的Scheme表达式并点击Execute按钮：
```
(define (somef x)
  (sin x x))
```
接着在交互窗口中，计算下列表达式并阅读错误消息：
```
(somef 10 20)
(somef 10)
```
观察DrRacket中高亮显示的表达式。  
答，输出结果如下：
```
>(somef 10 20)
somef: expects only 1 argument, but found 2
期望只有一个参数，但发现有两个。
>(somef 10)
sin: expects only 1 argument, but found 2
期望只有一个参数，但发现有两个。
```
