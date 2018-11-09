#lang racket

;The following two lines are required to test the code.
(require rackunit)
(require rackunit/text-ui)

#|
CS 270
Homework 1
Professor Mark W. Boady

Complete each of the below functions.

Tests given are not designed to be comprehensive.
They will give you an idea if your code is write, but they do not test all possible cases.

Think about your design.

When grading, we may add additional tests for your functions.
|#

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;Part 1 - Summations ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;Sum Notation:
;The following questions will use Sum Notation.
;sum( f(x), x=0..10) means add up the results of f(0)+f(1)+f(2)+...+f(10)
;for example
;sum( 2*x,x=0..2) = 2*0+2*1+2*2=0+2+4=6

;You do not need to error check the ranges.
;You may assume sum(..., x=a..b) AND a<=b for all questions

;Question 1 (10 points)
;Write a recursive function to compute
; the sum( 2x-1, x=1..n) for a given n as input.
;You must write a recursive function.
;If you use any iterative commands (for/loop/sum/etc you will receive a 0
(define (sum1 n)
  (if (= n 1)
      1
      (+ (- (* 2 n) 1) (sum1 (- n 1))))
  ;Complete this function definition.
)

;Test Bed
(display "Question 1 Tests (10 points)\n")
(define-test-suite test_sum1
  (check-equal? (sum1 1) 1)
  (check-equal? (sum1 2) 4)
  (check-equal? (sum1 3) 9)
  (check-equal? (sum1 4) 16)
  (check-equal? (sum1 5) 25)
  (check-equal? (sum1 6) 36)
  (check-equal? (sum1 7) 49)
  (check-equal? (sum1 8) 64)
  (check-equal? (sum1 9) 81)
  (check-equal? (sum1 10) 100)
)
(run-tests test_sum1)

;Question 2 (10 points)
;Write a recursive function to compute the
; sum sum( x, x=1..n) for a given input n
;You must write a recursive function.
;If you use any iterative commands (for/loop/sum/etc you will receive a 0)

(define (sum2 n)
  (if (= n 1)
      1
      (+ n (sum2 (- n 1))))
  ;Complete this function definition.
)

;Test Bed
(display "Question 2 Tests (10 points)\n")
(define-test-suite test_sum2
  (check-equal? (sum2 1) 1)
  (check-equal? (sum2 2) 3)
  (check-equal? (sum2 3) 6)
  (check-equal? (sum2 4) 10)
  (check-equal? (sum2 5) 15)
  (check-equal? (sum2 6) 21)
  (check-equal? (sum2 7) 28)
  (check-equal? (sum2 8) 36)
  (check-equal? (sum2 9) 45)
  (check-equal? (sum2 10) 55)
)
(run-tests test_sum2)

;Question 3 (10 points)
;Write a recursive function to compute
; the summation sum( x^2, x=1..n) for a given n
;You must write a recursive function.
;If you use any iterative commands (for/loop/sum/etc you will receive a 0)
(define (sum3 n)
  (if (= n 1)
      1
      (+ (* n n) (sum3 (- n 1))))
  ;Complete this function definition.
)

;Test Bed
(display "Question 3 Tests (10 points)\n")
(define-test-suite test_sum3
  (check-equal? (sum3 1) 1)
  (check-equal? (sum3 2) 5)
  (check-equal? (sum3 3) 14)
  (check-equal? (sum3 4) 30)
  (check-equal? (sum3 5) 55)
  (check-equal? (sum3 6) 91)
  (check-equal? (sum3 7) 140)
  (check-equal? (sum3 8) 204)
  (check-equal? (sum3 9) 285)
  (check-equal? (sum3 10) 385)
)
(run-tests test_sum3)

;Question 4 (10 points)
;Write a recursive function to compute the
; sum sum( x*(x+1), x=1..n) for a given n
;You must write a recursive function.
;If you use any iterative commands (for/loop/sum/etc you will receive a 0)

(define (sum4 n)
  (if (= n 1)
      2
      (+ (* n (+ n 1)) (sum4 (- n 1))))
  ;Complete this function definition.
)

;Test Bed
(display "Question 4 Tests (10 points)\n")
(define-test-suite test_sum4
  (check-equal? (sum4 1) 2)
  (check-equal? (sum4 2) 8)
  (check-equal? (sum4 3) 20)
  (check-equal? (sum4 4) 40)
  (check-equal? (sum4 5) 70)
  (check-equal? (sum4 6) 112)
  (check-equal? (sum4 7) 168)
  (check-equal? (sum4 8) 240)
  (check-equal? (sum4 9) 330)
  (check-equal? (sum4 10) 440)
)
(run-tests test_sum4)

;Question 5 (10 points)
;Write a recursive function to compute
; the summation sum( 8x-5, x=1..n) for a given n.
;You must write a recursive function.
;If you use any iterative commands (for/loop/sum/etc you will receive a 0)

(define (sum5 n)
  (if (= n 1)
      3
      (+ (- (* 8 n) 5) (sum5 (- n 1))))
  ;Complete this function definition.
)

;Test Bed
(display "Question 5 Tests (10 points)\n")
(define-test-suite test_sum5
  (check-equal? (sum5 1) 3)
  (check-equal? (sum5 2) 14)
  (check-equal? (sum5 3) 33)
  (check-equal? (sum5 4) 60)
  (check-equal? (sum5 5) 95)
  (check-equal? (sum5 6) 138)
  (check-equal? (sum5 7) 189)
  (check-equal? (sum5 8) 248)
  (check-equal? (sum5 9) 315)
  (check-equal? (sum5 10) 390)
)
(run-tests test_sum5)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;Part 2 - Puzzles ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;You must write recursive functions.
;If you use any iterative commands (for/loop/sum/etc you will receive a 0)

;Question 6 (10 points)
;Puzzle

;You are standing at the bottom of a staircase and heading to the top.
;You can take big steps (2 at a time) or small steps.
;Example: for 3 steps
;Method 1: Take 3 small steps
;Method 2: Take 1 small step and 1 big step
;Method 3: Take 1 big step and 1 small step

;Write a function that
;returns the number of ways to climb a staircase with n steps.
;You must write a recursive function.

(define (puzzle n)
  (cond
    [(= n 1) 1]
    [(= n 2) 2]
    [else (+ (puzzle (- n 1)) (puzzle (- n 2)))])
  ;Complete this function definition.
)

;Test Bed
(display "Question 6 Tests (10 points)\n")
(define-test-suite test_puzzle
  (check-equal? (puzzle 1) 1)
  (check-equal? (puzzle 2) 2)
  (check-equal? (puzzle 3) 3)
  (check-equal? (puzzle 4) 5)
  (check-equal? (puzzle 5) 8)
  (check-equal? (puzzle 6) 13)
  (check-equal? (puzzle 7) 21)
  (check-equal? (puzzle 8) 34)
  (check-equal? (puzzle 9) 55)
  (check-equal? (puzzle 10) 89)
)
(run-tests test_puzzle)

;Question 7 (20pts)
;Write a function the determines if a number is prime or not.
;Here is a basic layout for your function.
;1.) Negative Numbers, 0, and 1 are not primes.
;2.) To determine if n is prime:
;2a.) See if n is divisible by i=2
;2b.) Set i=i+1
;2c.) If i^2 <=n continue.
;3.) If no values of i evenly divided n, then it must be prime.
;Note: You can stop when i*i > n.
;Why?
;Take n=19 as an example.
;i=2, 2 does not divide 19 evenly
;i=3, 3 does not divide 19 evenly
;i=4, 4 does not divide 19 evenly
;i=5, we don't need to test this. 5*5=25.
;If 5*x=19, the value of x would have to be smaller then 5.
;We already tested those values!
;No larger numbers can be factors unless one we already test is to.

;You must write a recursive function.

;Hint: You may use a recursive helper function!
(define (is_prime n)
  (cond
    [(< n 2) #f]
    [else (is_prime_helper n 2)])
  ;Complete this function definition.
)
(define (is_prime_helper n i)
  (cond
    [(> (* i i) n) #t]
    [(= (modulo n i) 0) #f]
    [else (is_prime_helper n (+ i 1))])
)

;Here are some tests to see if your function works.
(display "Question 7 Tests (20 points)\n")
(define-test-suite test_is_prime
  (check-equal? (is_prime -1) #f)
  (check-equal? (is_prime 0) #f)
  (check-equal? (is_prime 1) #f)
  (check-equal? (is_prime 2) #t)
  (check-equal? (is_prime 3) #t)
  (check-equal? (is_prime 4) #f)
  (check-equal? (is_prime 5) #t)
  (check-equal? (is_prime 6) #f)
  (check-equal? (is_prime 7) #t)
  (check-equal? (is_prime 8) #f)
  (check-equal? (is_prime 9) #f)
  (check-equal? (is_prime 10) #f)
  (check-equal? (is_prime 11) #t)
  (check-equal? (is_prime 12) #f)
  (check-equal? (is_prime 13) #t)
  (check-equal? (is_prime 14) #f)
  (check-equal? (is_prime 17) #t)
  (check-equal? (is_prime 18) #f)
  (check-equal? (is_prime 19) #t)
  (check-equal? (is_prime 20) #f)
)
(run-tests test_is_prime)

;Question 8 (10 points)

;Write a function that
;sums the digits in a number.
;For example: the number 1246
;has digits 1,2,4,6
;The function will return 1+2+4+6

;You may assume the input is positive.
;You must write a recursive function.

(define (sum_digits n)
  (cond
    [(< n 10) n]
    [else (+ (modulo n 10) (sum_digits (quotient n 10)))])
  ;Complete this function definition.
)

;Test Bed
(display "Question 8 Tests (20 points)\n")
(define-test-suite test_sum_digits
  (check-equal? (sum_digits 395718860534) 59)
  (check-equal? (sum_digits 193139816415) 51)
  (check-equal? (sum_digits 22424170465) 37)
  (check-equal? (sum_digits 800187484459) 58)
  (check-equal? (sum_digits 427552056869) 59)
  (check-equal? (sum_digits 842622684442) 52)
  (check-equal? (sum_digits 412286285840) 50)
  (check-equal? (sum_digits 996417214180) 52)
  (check-equal? (sum_digits 386408307450) 48)
  (check-equal? (sum_digits 694607189265) 63)
  (check-equal? (sum_digits 773012980023) 42)
  (check-equal? (sum_digits 730616292946) 55)
  (check-equal? (sum_digits 106507053657) 45)
  (check-equal? (sum_digits 396412723003) 40)
  (check-equal? (sum_digits 944913350029) 49)
  (check-equal? (sum_digits 210936428922) 48)
  (check-equal? (sum_digits 750072072199) 49)
  (check-equal? (sum_digits 454744396973) 65)
  (check-equal? (sum_digits 736602622344) 45)
  (check-equal? (sum_digits 329844591802) 55)
)
(run-tests test_sum_digits)
      