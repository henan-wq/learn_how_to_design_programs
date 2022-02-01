;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6-3-1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct movie (title producer))
(define A (make-movie 'DriverMyCar 'C&I-Entertainment))
(movie-title A)
(movie-producer A)

(define-struct boyfriend (name hair eyes phone))
(define B (make-boyfriend 'YūsukeKafuku 'Black 'Black 'None))
(boyfriend-name B)
(boyfriend-hair B)
(boyfriend-eyes B)
(boyfriend-phone B)
  
(define-struct cheerleader (name number))
(define C (make-cheerleader 'Oto 'None))
(cheerleader-name C)
(cheerleader-number C)

(define-struct CD (artist title price))
(define D (make-CD 'RadioSlavexDeetron 'FIGUREJAMS007 '€6EUR))
(CD-artist D)
(CD-title D)
(CD-price D)

(define-struct sweater (material size producer))
(define E (make-sweater 'Wool 'XL 'Uniqlo))
(sweater-material E)
(sweater-size E)
(sweater-producer E)