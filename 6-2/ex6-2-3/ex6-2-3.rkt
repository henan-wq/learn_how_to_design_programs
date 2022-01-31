;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-2-3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 函数draw-bulb的合约：
;; draw-bulb : symbol -> boolean

;; 输入是color
;; 函数头部：
;; (define (draw-bulb color) ...)

;; 程序用途：输入一个颜色为color的符号，输出为true并打开红绿灯上相应颜色的灯。

;; 不论我们输入的符号是'green 'yellow 或'red。程序的输出都是true，我们需要找另一种输出的例子来了解程序运算过程中的问题。
;; 例子
;; 比如红灯亮的生成图
;; (draw-bulb 'red)
;; 比如黄灯亮的教学包生成图
;; (draw-bulb 'yellow)
;; 比如绿灯亮的生成图
;; (draw-bulb 'green)

;; 红绿灯的大小
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; 灯泡的位置
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; 绘制红灯亮时的灯光
;; (start WIDTH HEIGHT)
;; (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-circle (makek-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; 绘制黄灯亮时的灯光
;; (start WIDTH HEIGHT)
;; (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-circle (makek-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; 绘制绿灯亮时的灯光
;; (start WIDTH HEIGHT)
;; (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-solid-disk (makek-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; 程序体
;; (cond
;;     [(symbol=? color 'red) 绘制红灯，其他灯不亮]
;;     [(symbol=? color 'yellow) 绘制黄灯，其他灯不亮]
;;     [(symbol=? color 'green) 绘制绿灯，其他灯不亮]
;;     [else "Please enter 'red, 'yellow or 'green"])

;; 程序体

;; (cond
;;     [(symbol=? color 'red) (and (start WIDTH HEIGHT)
;;                                 (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;;                                 (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;;                                 (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
;;     [(symbol=? color 'yellow) (and (start WIDTH HEIGHT)
;;                                    (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;;                                    (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;;                                    (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
;;     [(symbol=? color 'green) (and (start WIDTH HEIGHT)
;;                                   (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;;                                   (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;;                                   (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
;;     [else "Please enter 'red, 'yellow or 'green"])

;; 完善程序体
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red)
     (and (start WIDTH HEIGHT)
          (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'yellow)
     (and (start WIDTH HEIGHT)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'green)
     (and (start WIDTH HEIGHT)
          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
          (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
          (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else "Please enter 'red, 'yellow or 'green"]))

;; 测试：
(draw-bulb 'red)
;; (draw-bulb 'yellow)
;; (draw-bulb 'green)
;; (draw-bulb 'black)