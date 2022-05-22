;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-6-6) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; teachpack: draw.ss

;; DATA DEFINITION

;; A circle is a structure:
;;     (make-circle P R C)
;; where P is a posn describing the center of the circle,
;;       R is a number describing the radius of the circle,
;;       C is a color.
(define-struct circle (center radius color))

;; DATA EXAMPLES
(make-circle (make-posn 1 1) 1 'red)
(make-circle (make-posn 10 10) 40 'blue)

#|
;; TEMPLATE

(define (fun-for-circles a-circle)
    ... (circle-center a-circle) ...
    ... (circle-radius a-circle) ...
    ... (circle-color a-circle) ...)

|#


; --------------------------------------------------

;; draw-a-disk : circle -> true
;; draws the disk on the screen

(define (draw-a-circle c)
    (draw-circle (circle-center c)
                 (circle-radius c)
                 (circle-color c)))

;; EXAMPLES TURNED INTO TESTS

(start 300 300)
(draw-a-circle (make-circle (make-posn 50 50) 50 'red))

; --------------------------------------------------