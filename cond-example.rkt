;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond-example) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (mag1 x)
  (if (< x 0)
      "negative"
      (if (= x 0)
          "zero"
          "positive")))

;Can be rewritten as:

(define (mag2 x)
  (cond [(< x 0) "negative"]
        [(= x 0) "zero"]
        [else    "positive"]))

;stepping

(mag2 0)

(cond [(< 0 0) "negative"]
      [(= x 0) "zero"]
      [else    "positive"])

(cond [false "negative"]
      [(= x 0) "zero"]
      [else    "positive"])

(cond [(= 0 0) "zero"]
      [else    "positive"])

(cond [true "zero"]
      [else "positive"])

(cond [true "zero"])

"zero"