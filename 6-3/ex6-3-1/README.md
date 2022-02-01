# 习题6.3.1 考虑下列结构体定义：
```
1. (define-struct movie (title producer))
2. (define-struct boyfriend (name hair eyes phone))
3. (define-struct cheerleader (name number))
4. (define-struct CD (artist title price))
5. (define-struct sweater (material size producer))
```
对于每一个结构体定义，对应的Scheme构造器和选择器的名字是什么？请画出来表示每个结构体的盒子。  
  
答：  
```
1. 构造器：(make-movie)         选择器：(movie-title) (movie-producer)
2. 构造器：(make-boyfriend)     选择器：(boyfriend-name) (boyfriend-hair) (boyfriend-eyes) (boyfriedn-phone)
3. 构造器：(make-cheerleader)   选择器：(cheerleader-name) (cheerleader-number)
4. 构造器：(make-CD)            选择器：(CD-artist) (CD-title) (CD-price)
5. 构造器：(make-sweater)       选择器：(sweater-material) (sweater-size) (sweater-producer)
```
结构体图解：  
```
movie:
title               producer
'DriveMyCar         'C&I-Entertainment

boyfirend:
name                hair                eyes                phone
'YūsukeKafuku       'Black              'Black              'None

cheerleader:
name                number
'Oto                'None

CD:
artist              title               price
'RadioSlavexDeetron 'FIGUREJAMS007      '€6EUR

sweater:
material            size                producer
'Wool               'XL                 'Uniqlo
```
完整程序见`ex6-3-1.rkt`。