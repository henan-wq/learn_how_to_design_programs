;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-6-5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; teachpack: draw.rkt
;; DATA DEFINITION
;; A circle is a strucutre:
;;  (make-circle P R C)
;; where P is a posn describing the center of the circle,
;;       R is a number describing the radius of the circle,
;;       C is a color.(symbol)
(define-struct circle (center radius color))

;; DATA EXAMPLES
(make-circle (make-posn 3 4) 1 'blue)

#|
;; TEMPLATE

(define (fun-for-circle a-circle)
  ... (circle-center) ...
  ... (circle-radius) ...
  ... (circle-color) ...)

|#
; ---------------------------------------------------
;; draw-a-disk : circle -> true
;; draws the disk on the screen.

(define (draw-a-circle c)
  (draw-circle (circle-center c)
               (circle-radius c)
               (circle-color c)))
;; EXAMPLES TURNED INTO TESTS

(start 300 300)
(draw-a-circle (make-circle (make-posn 50 50) 50 'black))
; --------------------------------------------------

;; clear-a-circle : circle -> boolean
;; 清除画布上的圆
;; 参考(clear-circle (make-posn 50 50) 50 'black)
(define (clear-a-circle A)
  (clear-circle (circle-center A)
                (circle-radius A)
                (circle-color A)))

(clear-a-circle (make-circle (make-posn 50 50) 50 'black))
