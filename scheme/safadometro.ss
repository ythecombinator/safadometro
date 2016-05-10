;; Luiz de Milon (https://github.com/kori), 2016

(define sum
  (lambda (n)
    (if (= n 0)
      0
      (+ n (sum (- n 1))))))

(define safadeza
  (lambda (day month year)
    (+ (sum month)
       (* (- 50 day)
          (/ year 100.0)))))

;; coloque sua data de nascimento aqui
(define safado (safadeza 2 4 98))
(define angel (- 100.0 safado))

(display safado)
(display "% safado")
(newline)
(display angel)
(display "% anjo")
(newline)
