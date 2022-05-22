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

;; in-circle? : circle posn -> boolean
;; determines if p is inside the circle c.

;; EXAMPLES
;; the point (6,5) is inside the circle located at (6,5) with radius 1
;; the point (5.5,5) is inside the circle located at (6,5) with radius 1
;; the point (1,5) is outside the circle located at (6,5) with radius 1

(define (in-circle? c p)
    (<= (sqrt (+ (sqr (- (posn-x (circle-center c))
                         (posn-x p)))
                 (sqr (- (posn-y (circle-center c))
                         (posn-y p)))))
        (circle-radius c)))

;; EXAMPLES TURNED INTO TESTS

(in-circle? (make-circle (make-posn 6 5) 1 'blue) (make-posn 6 5)) "should be" true
(in-circle? (make-circle (make-posn 6 5) 1 'green) (make-posn 5.5 5)) "should be" true
(in-circle? (make-circle (make-posn 6 5) 1 'yellow) (make-posn 1 5)) "should be" false

; --------------------------------------------------