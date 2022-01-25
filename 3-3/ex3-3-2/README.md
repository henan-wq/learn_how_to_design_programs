# 习题3.3.2
设计程序`volume-cylinder`，给定圆柱体半径和高度，该程序计算圆柱体的体积。
```
答：圆柱体半径为r，长度为h，体积：V = Π r^2 h

;; volume-cylinder : number -> number
;; volume-cylinder = Volume-cylinder-without-height * height
;; 体积等于 不包含体积的计算公式 与 高度 的乘积

;; Volume-cylinder-without-height : number -> number
;; 不包含体积的计算公式等于 Π*半径^2 

(define PI 3.14)
(define r 10)
(define h 12)

(define (Volume-cylinder-without-height r)
  (* PI (* r r)))

(define (volume-cylinder h)
  (* (Volume-cylinder-without-height r) h))
```
