# 习题 6.4.3
假定单词是用`'a`到`'z`之间的字符来表示，请给出由3个字母组成的单词的结构体定义和数据定义。  
  
答：  
```
;; 数据定义 symbol
;; 结构体定义 word
;; a word is a structure:
;; (make-word (f-letter s-letter t-letter))
;; where f-letter, s-letter and t-letter are symbols
(define-struct word (f-letter s-letter t-letter))

(make-word 'r 'e 'd)
(word-f-letter (make-word 'r 'e 'd))
(word-s-letter (make-word 'r 'e 'd))
(word-t-letter (make-word 'r 'e 'd))
```