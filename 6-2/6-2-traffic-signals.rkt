;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6-2-traffic-signals) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 图6.1中的定义和表达式的功能是绘制交通红绿灯。
;; 程序阐述了全局常量的定义的使用。
;; 在程序中，常量刻画了表示交通灯轮廓的画布幅度，以及三个灯泡的位置。

;; 红绿灯的大小
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; 灯泡的位置
;; (quotient WIDTH 2)是 求WIDTH与2的商。
;; 因为在这里WIDTH其实是画布的宽度，所以(/ 画布宽度 2)就是我们所有灯泡的坐标x
;; 红色灯泡的y坐标就是(+ 灯泡距离 灯泡半径)
;; 黄色灯泡的y坐标就是(+ 红色灯泡的y坐标 灯泡距离 (* 2 灯泡半径))
;; 绿色灯泡的y坐标就是(+ 黄色灯泡的y坐标 灯泡距离 (* 2 灯泡半径))
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; 绘制红灯亮时的灯光
(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)