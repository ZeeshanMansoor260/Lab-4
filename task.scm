(define add 
(lambda(m n s z)
(m s (n s z))))

(define and1 
	(lambda(M N a b)
	          (N(M a b)b)))
	         
(define or1 
	(lambda(M N a b)
	          (N a(M a b))))
	         
(define not1
	(lambda(M a b)
	          (M b a)))
	         
(define pred1
	(lambda(n)
		(n(lambda(g k)(g 1))(lambda(u)(+(g k)1)k))))
	
(define isZero1
	(lambda(n)(n lambda(x)(false)true)))
	
(define sub1
	(lambda(M N)(N pred1 M)))


(define LEQ
	(lambda(m n)(isZero1(sub1 m n))))

(define GEQ
	(lambda(n m)(isZero1(sub1 m n))))

(define EQ
	(lambda(m n)(and1 (LEQ m n) (LEQ n m))))