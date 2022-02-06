;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-6-4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; teachpack: draw.rkt
;; DATA DEFINITION

;; A circle is a structure.
;;   (make-circle P R C)
;; where P is posn describing the center of the circle.
;;       R is a number describing the radius of the circle.
;;       C is a color(symbol).
(define-struct circle (center radius color))

;; DATA EXAMPLES
(make-circle (make-posn 6 2) 1 'red)
(make-circle (make-posn 8 2) 1 'blue)

#|
;; TEMPLES

(define (fun-for-circles a-circle)
  ... (circle-center a-circle) ...
  ... (circle-radius a-circle) ...
  ... (circle-color a-circle) ...)

|#

; ---------------------------------------------------------

;; draw-a-disk: circle -> true
;; draws the disk on the screen.

(define (draw-a-circle c)
  (draw-circle (circle-center c)
               (circle-radius c)
               (circle-color c)))

;; EXAMPLES TURNED INTO TESTS.

(start 300 300)
(draw-a-circle (make-circle (make-posn 6 2) 1 'red))

; --------------------------------------------------------

;; translate-circle : circle  number circle
;; 输入结构体圆与一个数delta，绘制出另一个结构体圆，圆心在第一个圆的右边，圆心之间的距离是delta。

;; EXAMPLES
;; 输入圆心(6,5)，delta为1，第二圆的圆心是(7,5)，圆的半径均为1
;; 输入圆心(8,2),delta为3，第二个圆心是(11,2)，圆的半径均为1

;; (+ (posn-x (circle-center c)) d)

(define (translate-circle c d)
  (make-circle (make-posn (+ (posn-x (circle-center c)) d) (posn-y (circle-center c)))
               (circle-radius c)
               (circle-color c)))

;; EXAMPLES TURNED INTO TESTS

(translate-circle (make-circle (make-posn 30 30) 30 'blue) 20) "should be"
;; (make-circle (make-posn 50 30) 30 'blue)

(draw-a-circle (make-circle (make-posn 30 30) 30 'yellow))
(draw-a-circle (translate-circle (make-circle (make-posn 30 30) 30 'blue) 20))
