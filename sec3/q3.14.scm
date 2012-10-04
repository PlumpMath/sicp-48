(define (mystery x)
  (define (loop x y)
    (if (null? x)
      y
      (let ((temp (cdr x)))
        (set-cdr! x y)
        (loop temp x))))
  (loop x '()))

;; gosh> (mystery '( a b c))
;; (c b a)
;; gosh> (mystery '(a (b c)))
;; ((b c) a)
;; mysteryはlistを反転する

(define v (list 'a 'b 'c 'd))
(define w (mystery v))

;; gosh> w
;; (d c b a)

;; ���ƃ|�C���^�}�������B

