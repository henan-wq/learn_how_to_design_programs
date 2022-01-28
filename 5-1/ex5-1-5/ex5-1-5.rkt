;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5-1-5) (read-case-sensitive #t) (teachpacks ((lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "master.rkt" "teachpack" "htdp")) #f)))
(define (check-color target1 target2 guess1 guess2)
  (cond
    [(and (symbol=? target1 guess1) (symbol=? target2 guess2)) 'Perfect]
    [(or (symbol=? target1 guess1) (symbol=? target2 guess2)) 'OneColorAtCorrectPositon]
    [(or (symbol=? target1 guess2) (symbol=? target2 guess1)) 'OneColorOccurs]
    [else 'NothingCorrect]))

;; 情况一，全对
(symbol=? (check-color 'red 'green 'red 'green) 'Perfect)
;; 情况二 目标1与猜测1相等
(symbol=? (check-color 'red 'green 'red 'blue) 'OneColorAtCorrectPositon)
;; 或目标2与猜测2相等
(symbol=? (check-color 'red 'green 'blue 'green) 'OneColorAtCorrectPositon)
;; 情况三 目标1与猜测2相等
(symbol=? (check-color 'red 'green 'blue 'red) 'OneColorOccurs)
;; 或目标2与猜测1相等
(symbol=? (check-color 'red 'green 'green 'blue) 'OneColorOccurs)
;; 情况四 目标与猜测分别不等
(symbol=? (check-color 'red 'green 'blue 'yellow) 'NothingCorrect)
;; 使用教学软件的`master.ss`进行游戏
(master check-color)