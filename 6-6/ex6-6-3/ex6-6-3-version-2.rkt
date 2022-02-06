;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-6-3-version-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; (make-posn 3 4)
;; (define (distance-to-0 a-posn)...)
;; (define (distance-to-0 (make-posn 3 4)))
(posn-x (make-posn 3 4))
(posn-y (make-posn 3 4))

;; radius= 10
(define-struct center (xx yy))
(make-center 30 30)
(start 300 300)
(draw-circle (make-posn 30 30) 30 'blue)
(draw-solid-line (make-posn 3 4)(make-posn 30 30) 'red)

;; 像素点与圆心之间的距离= (sqrt (+ (sqr (- x1 x2)) (sqr (- y1 y2))))
;; x1是像素点
;; (sqrt(+(sqr (- (posn-x (make-posn 3 4)) 30))
;;        (sqr (- (posn-y (make-posn 3 4)) 30))))

(define (DISTANCE (make-posn x1 y1))
  (sqrt(+(sqr (- (posn-x (make-posn x1 y1)) 30))
         (sqr (- (posn-y (make-posn x1 y1)) 30)))))
;; DISTANCE


;; (center-xx a-circle


;; 定义半径为30
(define RADIUS 30)

;; DISTANCE < = radius,则在圆内，否则在圆外

(define (in-circle? a-circle one-posn)
  (cond
    [(< (DISTANCE ) RADIUS) 'InCircle]
    [(= DISTANCE RADIUS) 'InCircle]
    [else 'OutCircle]))

