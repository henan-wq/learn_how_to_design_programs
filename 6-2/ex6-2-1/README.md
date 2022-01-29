# 习题 6.2.1 按顺序计算下列表达式：
```
1. (start 300 300):为后续绘图操作打开一个画布
2. (draw-solid-line (make-posn 1 1)(make-posn 5 5) 'red)：绘制一条红线；
3. (draw-solid-rect (make-posn 20 10) 50 200 'blue)：绘制一个宽为50，长为200的蓝色长方形；
4. (draw-circle (make-posn 200 10) 50 'red)：绘制一个半径为50的红色的圆，圆心在长方形上面一条边上；
5. (draw-solid-disk (make-posn 200 10) 50 'green)：绘制一个半径为50绿色圆盘，圆心在长方形上面一条边上；
6. (stop)：关闭画布。

请点击DrRacket的 HeplDesk 菜单项，阅读 draw.ss 的文档
```

答：
DrRacket提供的教学软件包**draw.ss**包含的绘图操作：
```
(start 300 300)
(draw-solid-line (make-posn 1 1)(make-posn 5 5) 'red)
(draw-solid-rect (make-posn 20 10) 50 200 'blue)
(draw-circle (make-posn 200 10) 50 'red)
(draw-solid-disk (make-posn 200 10) 50 'green)

;; 暂缓 evaluation 5秒钟
(sleep-for-a-while 5)

(stop)
```
