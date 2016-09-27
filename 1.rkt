#lang racket
;;1-2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;;1-3
(define (square x) (* x x))

(define (big_num a b)
	(if (> a b) a b)
)

(define (q1-3 a b c)
	(+ (square (big_num a b)) (square (big_num b c)))
)

(q1-3 1 2 3)

;;1-4
;前置のものが先に展開される
;この場合 (if (> b 0) = -)が展開後a b の演算が行われる
(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b)
)

(a-plus-abs-b 2 3)

;;1-5
;(p)で止まるのでtestに入れない
(define (p) (p))

(define (test x y)
	(if (= x 0)
		0
		y
	)
)

;(test 0 (p))

;;1-6
;sqrt-iterの再起呼び出しによる引数guess値の減少具合がnew-ifの=演算でtrueを取らない可能性がある。

;;1-7
;
