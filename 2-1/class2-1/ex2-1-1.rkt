;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2-1-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 习题2.1.1
;; 查明DrScheme是否具备平方、计算一个角度的正弦值以及确定
;; 两个数的最大值的运算。



;; 答：

;; --------------------------------------------------

;; 计算平方
(sqr 2) ;; 4

;; --------------------------------------------------

;; 计算角度正弦值
(sin 90) ;; #i0.8939966636005579
(sin 80) ;; #i-0.9938886539233752
(sin 0) ;; 0
(sin 30) ;; #i-0.9880316240928618
(sin 60) ;; #i-0.3048106211022167

;; --------------------------------------------------

;; 确定两个数的最大值的运算：
(> 30 70) ;; #false
(< 30 70) ;; #true
(= 30 70) ;; #fasle