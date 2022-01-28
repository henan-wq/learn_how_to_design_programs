# 第5章
## symbol 符号
**`symbol`是原子数据。**
对于符号，scheme只提供一种操作，比较操作。`symbol=?`它有两个参数，当两个参数相等时，其值为`true`：
> 注意：并不是所有的键盘符号都是合法的symbol，如空格和逗号就是不合法的。
```
(symbol=? 'Hello 'Hello) = true
(symbol=? 'Hello 'Howdy) = false
(symbol=? 'Hello x) = true  如果x的值为'Hello
(symbol=? 'Hello x) = false 如果x的值为 'howdy
```
考虑`reply`函数，对问候语“good morning”，“how are you”等做出回答，`reply`函数接受一个符号类的参数，结果也是符号类：
```
;; reply : symbol -> symbol
;; 对于问候s 确定一个回答
(define (reply s) ...)
```
按照设计诀窍写出`cond`表达式：
```
(define (reply s)
  (cond
    [(symbol=? s 'Goodmorning) ...]
    [(symbol=? s 'HowAreYou?) ...]
    [(... ... ...)]))
```
最终函数：
```
(define (reply s)
  (cond
    [(symbol=? s 'GoodMorning) 'Hi]
    [(symbol=? s 'HowAreYou?) 'Fine]
    [(symbol=? s 'GoodAfternoon) 'INeedANap]
    [(symbol=? s 'GoodEvening) 'BoyAmITired]))
```

## string 字符串
**string是复合数据**
string是第二种符号数据。
```
"the dog"
"isn't" "made of"
```
运算：`string=?`，对两个字符串进行比较。  

## `image`是第三种符号数据