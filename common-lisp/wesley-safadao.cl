;; @Manoel Vilela
;;  20/12/2015
;; Into the world of safadeza

(defun sum (value)
    (setq total 0)
    (loop for i from 1 below (+ value 1)
        collect (setf total (+ total i))
    )
    total
)

(defun safadeza (dia mes ano)
    (+ 
        (sum mes) 
        (* 
            (- 50 dia) 
            (/ ano 100 )
        )
    )
)

(defun anjo (nivel-safadeza)
    (- 100 nivel-safadeza)
)

(defun safadao (dia mes ano)
    (setq nivel-safadeza (eval (safadeza dia mes ano)))
    (setq grau-anjo (eval (anjo nivel-safadeza)))
    (format t "Você é ~f% safado, porém ~f% anjo. Hmmm... #continua " nivel-safadeza grau-anjo)
)