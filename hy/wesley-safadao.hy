(defn sum-range [n]
  (sum (range 1 (+ 1 n))))

(defn wesley-safadao [day month year]
  (setv safadeza
    (+ (sum-range month)
      (* (/ year 100)
        (- 50 day))))
  (setv anjo (- 100 safadeza))
  { :safado safadeza :anjo anjo })

(defn say-safadeza [day month year]
  (setv result (wesley-safadao day month year))
  (setv safado (:safado result))
  (setv anjo (:anjo result))
  (print (.format "Você é {0}% safado e {0}% anjo" safado anjo)))
