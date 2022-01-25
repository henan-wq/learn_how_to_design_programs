# 3.3.6
回忆一下习题2.2.1中的程序`Fahrenheit->Celsius`，该程序的输入为华氏温度，输出为等价的摄氏温度。  
设计程序`Celsius->Fahrenheit`，其输入为摄氏温度，输出为等价的华氏温度。  
现考虑函数：
```
;; I : number -> number
;; 将华氏温度转换为摄氏温度再转换回华氏温度
(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))
```
请分别手工和使用DrRacket的按步执行方式计算`(I 32)。  
并思考从这两个函数的复合中你得到的启发是什么？
