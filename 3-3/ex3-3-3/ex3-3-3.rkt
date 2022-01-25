;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-3-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define PI 3.14)
;; area-cylinder=2Πr(r+h)
;; r, h->area-cylinder : number, number -> number
(define (area-cylinder r h)
  (* 2 PI r (+ r h)))

(area-cylinder 2 3)

