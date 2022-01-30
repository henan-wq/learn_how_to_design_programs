;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-2-2-version2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;; 打开某种颜色灯的函数
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red) (and (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'yellow) (and (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                   (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                   (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [(symbol=? color 'green) (and (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                  (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                  (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else 'None]))

;; 关闭灯的函数
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red) (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? color 'yellow) (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                   (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? color 'green) (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
                                   (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]
    [else 'None]))

;; 最后我将程序汇总成一个闪烁的灯，函数的参数就是颜色
;; 打开画布
;; 绘制某色灯泡
;; 暂缓 evaluation 2秒钟
;; 执行关灯
;; 暂缓 evaluation 2秒钟
;; 绘制某色灯泡
;; 暂缓 evaluation 2秒钟
;; 执行关灯
;; 暂缓 evaluation 2秒钟
;; 退出画布
(define (flashing-bulb color)
  (and (start WIDTH HEIGHT)
       (draw-bulb color)
       (sleep-for-a-while 2)
       (clear-bulb color)
       (sleep-for-a-while 2)
       (draw-bulb color)
       (sleep-for-a-while 2)
       (clear-bulb color)
       (sleep-for-a-while 2)
       (stop)))

;; 执行函数,参数为红色
(flashing-bulb 'red)

;; 有一次的错误报告如下，原因可能是我在运行函数(flashing-bulb)前,有一个多余(stop)在程序最后一行，该问题已被我修复，：
;; Welcome to DrRacket, version 8.3 [cs].
;; Language: Beginning Student [custom]; memory limit: 128 MB.
;; Teachpack: draw.rkt.
;; evaluate (start <num> <num>) first
;; >

;; 解决问题后，输出为一个#true：
;; Welcome to DrRacket, version 8.3 [cs].
;; Language: Beginning Student [custom]; memory limit: 128 MB.
;; Teachpack: draw.rkt.
;; #true
;; > 
