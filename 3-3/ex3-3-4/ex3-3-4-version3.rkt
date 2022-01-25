;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-3-4-version3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; area-pipe-one-def : number number number -> number
;; to determine the area of a pipe with given inner radius, length, and thickness
;; this version does not use any helper functions
;; 这个版本不使用任何辅助函数
(define (area-pipe-one-def inner len thickness)
  (+ (* 2 (- (* pi (+ inner thickness) (+ inner thickness))
             (* pi inner inner)))
     (* len (* 2 pi (+ inner thickness)))
     (* len (* 2 pi inner))))

;; area-pipe : number number number -> number
;; to determine the area of a pipe with given inner radius, length, and thickness
(define (area-pipe inner len thickness)
  (+ (* 2 (area-donut inner (+ inner thickness)))  ; s.a. of rings on ends
     (* len (circumference (+ inner thickness)))   ; s.a. of outer cylinder
     (* len (circumference inner))))               ; s.a. of inner cylinder

;; area-donut : number number -> number
;; finds the area of a circle with a chunk missing
;; the entire circle has radius outer and the missing
;; middle portion has radius inner.
(define (area-donut inner outer)
  (- (area-circle outer)
     (area-circle inner)))

;; area-circle : number -> number
;; determines the area of a circle with given radius  确定给定半径的圆的面积
(define (area-circle r)
  (* pi r r))

;; circumference : number -> number
;; determines the circumference of a circle with given radius 确定给定半径的圆的周长
(define (circumference r)
  (* 2 pi r))

;; EXAMPLES AS TESTS
(area-circle 3) "should be" (* 9 pi)
(circumference 3) "should be" (* 6 pi)
(area-donut 3 5) "should be" (* 16 pi)
(area-pipe 2 3 4) "should be" (* 112 pi)
(area-pipe-one-def 2 3 4) "should be" (* 112 pi)