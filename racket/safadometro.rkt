#lang racket

(define day   (read))
(define month (read))
(define year  (read))

(define (sum n)
  (if (= 0 n)
      0
      (+ n (sum (- n 1)))))

(define safadeza
  (lambda (day month year)
    (+ (sum month) (* (/ year 100.00) (- day 50.00)))))

(define angel
  (lambda ()
    (- 100.00 (safadeza day month year))))

(printf "Você é ~a% safado e ~a% anjo" (safadeza day month year) (angel))
