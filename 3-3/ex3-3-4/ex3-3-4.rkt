;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-3-4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; area-pipe
;; 根据管道的内半径、长度和厚度，计算管道的表面积
;; 管道表面积 = 大圆柱体表面积 - 两个小圆面积 + 小圆柱体表面积 - 两个小圆面积
;; 管道表面积 = 大圆柱体表面积 + 小圆柱体表面积 - 四个小圆面积
;; 其中r=内半径+厚度，h=长度
(define inner-radius 3)
(define thickness 1)
(define length-of-pipe 12)
(define h length-of-pipe)

;; r=内半径+厚度
(define (r inner-radius)
  (+ inner-radius thickness))

;; 大圆珠体表面积 = area-of-a-large-cylinder = 2 PI r（r+h）
(define (area-of-a-large-cylinder r)
  (* 2 pi r (+ r h)))

;; 小圆面积= PI 小圆半径^2
(define (area-of-circle inner-radius)
  (* pi (* inner-radius inner-radius)))

;; 小圆柱体表面积 = area-of-a-small-cylinder = 2 PI 小圆半径（小圆半径+h）
(define (area-of-a-small-cylinder inner-radius)
  (* 2 pi inner-radius (+ inner-radius h)))

;; 管道表面积 = 大圆柱体表面积 + 小圆柱体表面积 - 四个小圆面积
(define (area-pipe r)
  (- (+ (area-of-a-large-cylinder r) (area-of-a-small-cylinder inner-radius))
     (* 4 (area-of-circle inner-radius))))