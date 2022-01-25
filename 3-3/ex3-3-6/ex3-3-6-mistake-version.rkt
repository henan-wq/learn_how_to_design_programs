;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-3-6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; I : number -> number
;; 将华氏温度转换为摄氏温度再转换回华氏温度
(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))

;; Celsius->Fahrenheit : number -> number
;; 将摄氏温度转换为华氏温度
(define (Celsius->Fahrenheit c)
  (+ (* (/ 9 5) c) 32))

;; Fahrenheit->Celsius : number -> number
;; 将华氏温度转换为摄氏温度
(define (Fahrenheit->Celsius f)
  (* (/ 5 9) (- f 32)))