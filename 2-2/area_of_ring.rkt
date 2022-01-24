#lang racket
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))