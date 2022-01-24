# 习题 2.4.1
在 DrRacket 中逐个计算如下表达式：
```
(+ (10) 20)
(10 + 20)
(+ +)

阅读并理解错误消息。
function call: expected a function after the open parenthesis, but found a number

function call: expected a function after the open parenthesis, but found a number

+: expected a function call, but there is no open parenthesis before this function

函数调用：期望在开放的括号后有一个函数，但发现是一个数字

函数调用：预期在开放的括号后有一个函数，但发现了一个数字

+：预计会有一个函数调用，但在这个函数之前没有开放的括号
```
# 习题2.4.2
在DrRacket的Definitions窗口逐个输入下述语句并点击Execute按钮：
```
(define (f 1)
	(+ x 10))

(define (g x)
	+ x 10)

(define h(x)
	(+ x 10))

```
答，修改后如下：
```
(define (f x)
  (+ x 10))

(define (g x)
  (+ x 10))

(define (h x)
  (+ x 10))
```
