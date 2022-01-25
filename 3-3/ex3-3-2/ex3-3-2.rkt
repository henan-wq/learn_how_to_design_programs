;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-3-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define PI 3.14)
(define r 10)
(define h 12)

;; volume-cylinder : number -> number
;; volume-cylinder = Volume-cylinder-without-height * height
;; 体积等于 不包含体积的计算公式 与 高度 的乘积
(define (Volume-cylinder-without-height r)
  (* PI (* r r)))

;; Volume-cylinder-without-height : number -> number
;; 不包含体积的计算公式等于 Π*半径^2
(define (volume-cylinder h)
  (* (Volume-cylinder-without-height r) h))
