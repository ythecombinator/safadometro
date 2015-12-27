(defn sum_month [n]
  (->> (range (+ n 1))
    (reduce +)))

(defn safadeza [day month year]
  (+ (sum_month month)
     (* (/ year 100)
        (- 50 day))))

(defn anjo [saf]
  (- 100 saf))

(defn wesley_safadao [day month year]
  (let [saf (safadeza day month year)
        angel (anjo saf)]
    (println (str "Você é " (float saf) "% safado e " (float angel) "% anjo"))))
