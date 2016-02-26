;; @Manoel Vilela
;;  20/12/2015
;; Into the world of safadeza

(defun sum-range (value)
  (reduce '+ (loop for x from 1 to value)))

(defun safadeza (dia mes ano)
  (+ (sum-range mes) 
     (* (- 50 dia) (/ ano 100 ))))

(defun anjo (nivel-safadeza)
  (- 100 nivel-safadeza))

(defun safadao (dia mes ano)
    (let* ((nivel-safadeza (safadeza dia mes ano))
           ((grau-anjo (anjo nivel-safadeza))))
          (format t "Você é ~f% safado, porém ~f% anjo. Hmmm... #continua " nivel-safadeza grau-anjo)))
