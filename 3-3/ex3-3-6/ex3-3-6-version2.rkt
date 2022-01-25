;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3-3-6-version2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; Celsius->Fahrenheit : number -> number
;; 将摄氏温度转换为华氏温度
(define (Celsius->Fahrenheit t)
  (+ (* (/ 9 5) t) 32))

;; Fahrenheit->Celsius : number -> number
;; 将华氏温度转换为摄氏温度
(define (Fahrenheit->Celsius t)
  (* (/ 5 9) (- t 32)))

;; I : number -> number
;; 将华氏温度转换为摄氏温度再转换回华氏温度
(define (I f)
  (Celsius->Fahrenheit (Fahrenheit->Celsius f)))

;; EXAMPLES AS TESTS
(I 32) "should be" 32