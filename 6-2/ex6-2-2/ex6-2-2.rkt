;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-2-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;; 打开灯的函数
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
                                  (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]))

;; 关闭灯的函数
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red) (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
                                (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? color 'yellow) (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
                                   (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? color 'green) (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
                                   (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]))



;; 绘制红灯亮时的灯光
;; (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
;; (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)


;; 其他的参考
;; (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
;; (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)

;; 以下是写错的，请忽略
;; [(= (symbol=? color 'green) #true)
;;     (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'green)
;;          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'green))]
;;    [(= (symbol=? color 'yellow) #true)
;;     (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'yellow)
;;          (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'yellow))]))



;; 打开画布
(start WIDTH HEIGHT)
;; 绘制绿色灯泡
(draw-bulb 'green)
;; 暂缓 evaluation 5秒钟
(sleep-for-a-while 5)

;; 执行关闭绿灯
(clear-bulb 'green)

;; 暂缓 evaluation 5秒钟
(sleep-for-a-while 5)
;; 退出画布
(stop)