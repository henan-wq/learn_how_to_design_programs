;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-3-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (A n)
  (cond
    [(<= n 1000)(* .040 1000)]
    [(<= n 5000)(+ (* 1000 .040)
                    (* (- n 1000) .045))]
    [else(+ (* 1000 .040)
             (* 4000 .045)
             (* (- n 10000) .055))]))
(A 500)
(A 2800)
(A 15000)