;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; interest-rate : number -> number
;; 确定给定amount存款额的利率
;; (define (interest-rate amount) ...)
;; 例子：
;; (= (interest-rate 1000) .04)
;; (= (interest-rate 5000) .045)
;; (= (interest-rate 8000) .050)
;; (cond
;;   [(<= amount 1000) ...]
;;   [(<= amount 5000) ...]
;;   [else ...])
;; 定义如下：
(define (interest-rate amount)
  (cond
    [(<= amount 1000) 0.04]
    [(<= amount 5000) 0.045]
    [else 0.050]))
;; 例如：
(interest-rate 4000)
;; = (cond
;;     [(<= 4000 1000) 0.04]
;;     [(<= 4000 5000) 0.045]
;;     [else 0.050])
;; = 0.045