;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-4-1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; a movie is a structue:
;; (make-movie symbol symbol)
(define-struct movie (title producer))

;; a boyfriend is a structure:
;; (make-boyfriend symbol symbol symbol number)
(define-struct boyfriend (name hair eyes phone))

;; a cheerleader is a structure:
;; (make-cheerleader symbol number)
(define-struct cheerleader (name number))

;; a CD is a structure:
;; (make-CD symbol symbol number)
(define-struct CD (artist title price))

;; a sweater is a structure:
;; (make-sweater symbol number symbol)
(define-struct sweater (material size producer))
