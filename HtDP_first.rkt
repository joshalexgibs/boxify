;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HtDP_first) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; string -> string
;; produce plural form of given string
(check-expect (pluralizer "dog") "dogs")
(check-expect (pluralizer "flower") "flowers")

;(define (pluralizer word) "") ;this is the stub

;(define (pluralizer word) ;this is a template
;  (... word))

(define (pluralizer word)
  (string-append word "s"))