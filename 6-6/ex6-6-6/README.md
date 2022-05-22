# 习题6.6.6
定义函数`draw-and-clear-circle`，它按照circle结构体画一个圆，经过较短时间后，将其清除。教学软件包`draw.ss`提供有函数`sleep-for-a-while`，它的输入为一个数，效果是计算机将休眠这些时间（单位为秒），该函数的返回值为true。  
例如，执行`(sleep-for-a-while 1)`的效果是将计算机休眠1秒钟。  
下面的函数是在画布上每次一小步平移一个圆的关键部分：  
```
;; move-circle : number circle -> circle
;; 绘制并消除一个圆，再平移delta个像素
(define (move-circle delta a-circle)
  (cond
    [(draw-and-clear-circle a-circle) (translate-circle a-circle delta)]
    [else a-circle]))
```

该函数在画布上绘制了一个圆然后消除，接着产生一个新的circle结构体，以便另一次执行该函数时将它移到一个新的位置：  
```
(start 200 100)

(draw-a-circle
    (move-circle 10
        (move-circle 10
            (move-circle 10
        (move-circle 10 ... a circle ...)))))
```  
该表达式将一个圆移动了4次，每次10个像素，并在画布上显示了这一移动。最后一个`draw-a-circle`是必需的，否则将无法看到最后的圆。  
