# 习题3.3.1
```
英制						公制
1 inch						=	2.54 cm
1 feet		=	12 	in.
1 yard 		=	3	ft.
1 rod		=	5又(1/2)yd.
1 furlong 	=	40	rd.
1 mile		=	8	fl.
```
设计函数`inches->cm`, `feet->inches`, `yards->feet`, `rods->yards`, `furlongs->rods`和 `miles->furlongs`。
```
;; inches-cm : number -> number
;; 对于给定inches，计算cm
;; 例子：(inches-cm 1)的结果为 1 inch*2.54=2.54 	cm
;; 例子：(inches-cm 2)的结果为 2 inch*2.54=5.08	cm
;; 例子：(inches-cm 3)的结果为 3 inch*2.54=7.62 	cm
(define (inches-cm inches) ...)

;; feet-inches : number -> number
;; 对于给定feet，计算inches
;; 例子：(feet-inches 1)的结果为 1 ft*12=12 	in
;; 例子：(feet-inches 2)的结果为 2 ft*12=24 	in
;; 例子：(feet-inches 3)的结果为 3 ft*12=36 	in
(define (feet-inches feet) ...)

;; yards-feet : number -> number
;; 对于给定yards，计算feet
;; 例子：(yards-feet 1)的结果为 1 yards*3=3	ft
;; 例子：(yards-feet 2)的结果为 2 yards*3=6	ft
;; 例子：(yards-feet 3)的结果为 3 yards*3=9	ft
(define (yards-feet yards) ...)

;; rod-yards : number -> number
;; 对于给定rod，计算yards
;; 例子：(rod-yards 1)的结果为 1rod*5又(1/2)=11/2=5.5	yd
;; 例子：(rod-yards 2)的结果为 2rod*5又(1/2)=	  11	yd
;; 例子：(rod-yards 3)的结果为 3rod*5又(1/2)=33/2=16.5	yd
(define (rod-yards rod) ...)


;; furlongs-rods : furlongs->rods
;; 对于给定furlongs，计算rods
;; 例子：(furlongs-rods 1)=1 fl*40=40	rd
;; 例子：(furlongs-rods 2)=2 fl*40=80	rd
;; 例子：(furlongs-rods 3)=3 fl*40=120	rd
(define (furlongs-rods furlongs) ...)

;; miles-furlongs : miles->furlongs
;; 对于给定miles，计算furlongs
;; 例子：(miles-furlongs 1)的结果为 1 mile*8=8	fl
;; 例子：(miles-furlongs 2)的结果为 2 mile*8=16	fl
;; 例子：(miles-furlongs 3)的结果为 3 mile*8=24	fl
(define (miles-furlongs miles) ...)

```
