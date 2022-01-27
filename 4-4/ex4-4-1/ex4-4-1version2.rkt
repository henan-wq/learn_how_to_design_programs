;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4-4-1version2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; 计算利率
(define (interest-rate amount)
  (cond
    [(<= amount 1000) 0.04]
    [(<= amount 5000) 0.045]
    [else 0.05]))

(= (interest-rate 0) 0.04)
(= (interest-rate 1000) 0.04)
(= (interest-rate 5000) 0.045)
(= (interest-rate 8000) 0.05)

(= (interest-rate 500) 0.04)
(= (interest-rate 3000) 0.045)
(= (interest-rate 6000) 0.05)

;; 计算年存款收益
(define (interest amount)
  (* amount (interest-rate amount)))

(= (interest 0) 0)
(= (interest 1000) 40)
(= (interest 5000) 225)
(= (interest 8000) 400)

(= (interest 500) 20)
(= (interest 3000) 135)
(= (interest 6000) 300)