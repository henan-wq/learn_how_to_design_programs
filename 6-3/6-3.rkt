;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6-3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; 定义结构体,能看到结构体是entry，通过使用“操作”创建数据：字段名是name、zip和phone
(define-struct entry (name zip phone))

;; 分别给3个字段输入3个值，并给我们的结构体定义为一个函数
(define phonebook (make-entry 'PeterLee 15270 '606-7771))

;; 在Interaction窗口使用选择器提取结构体中任何一个字段中的数据。
(entry-name phonebook)

(define-struct star (last first instrument sales))
(define E (make-star 'Friedman 'Dan 'ukelele 19004))
(make-star 'Talcott 'Carolyn 'banjo 80000)
(make-star 'Harper 'Robert 'bagpipe 27860)
(star-first E)

(define-struct star (last first instrument sales))
(define E (make-star 'Friedman 'Dan 'ukelele 19004))
(star-first E)
(star-last E)