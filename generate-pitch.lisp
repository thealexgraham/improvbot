#|GENERATE PITCH
==========================================================================
Functions for picking intervals when generating a melodic line

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defconstant *human-int-lookup* '(-P8 -MAJ7 -MIN7 -MAJ6 -MIN6 -P5
				  -P4 -MAJ3 -MIN3 -MAJ2 -MIN2
				  P1 MIN2 MAJ2 MIN3 MAJ3 P4 P5
				  MIN6 MAJ6 MIN7 MAJ7 P8))

(defconstant *int-lookup* '(-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11))

(defconstant *possible-ints* '(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))


(defvar *instrument-range* '(35 150))
(defvar *range-size* (- (2nd *instrument-range*) (1st *instrument-range*)))

(defun max.oboe () (setf *instrument-range* '(60 80)))
(defun max.cello () (setf *instrument-range* '(35 62)))


(defvar *high-in-range* '(0 .1 .2 .3 .4 .4 .5 .6 .8 1))
(defvar *low-in-range*  '(1 .8 .6 .5 .4 .4 .3 .2 .1 0))

(defvar *prefer-up*   '(0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1))
(defvar *prefer-down* '(1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0))

;(setf *prefer-down*   '(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))

(defvar *favor-small* '(.4 .4 .4 .4 .5 .5 .7 .7 .7 .6 .9 .4 .9 .6 .7 .7 .7 .5 .5 .4 .4 .4 .4))

(defvar *phrase-ramp* (fz-make-trapezoid+ 45 0 22 24 45))
(defvar *shape-map* '(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1))



;;the scaled value of the difference between the note and the shape-map
;;is currently flawed as it is scaled to just -15 0 15, which does nothing
;;to help a situation where the interval is higher than that. perhaps I could
;;just add 1.0 1.0 1.0s to the correct side

(defun phrase.generate-interval (xphrase)
  "generates an interval using the information in the phrase"
  (let* ((last-pitch (pitch (last-note xphrase)))
	 (position (phrase-position xphrase))
	 (phrase-length (phrase-length xphrase))
	 (shape-map (shape-map xphrase))
	 (xshape-range (+ 10 (shape-range xphrase)))
	 (shape-value (list-membership shape-map ;;find the value the phrase is at position
				       (/ position phrase-length))); (regular-scale 3 (/ position phrase-length) 0 1)))
	 ;this is the difference in pitch scaled to a range of 24 to pick out a trapezoid from the ol phrase-ramp
	 (scaled-value (floor-scale 23 (- last-pitch shape-value) (- 0 (/ xshape-range 2)) (/ xshape-range 2))))
    (setf *shape-map* (get-ramp-around-x scaled-value 23 *phrase-ramp*))
    (pick-an-int 0 last-pitch)))




(defun get-ramp-around-x (x range zramp)
  (let* ((middle-z (ceiling (/ (length zramp) 2)))
	 (below (1- x))
	 (above (- range x)))
    (get-list-range (- middle-z below) (+ middle-z above) zramp)))

(defun get-list-range (bottom top xlist)
  (restn bottom (firstn top xlist)))

;(firstn range (restn (- middle below) zramp))

(defun floor-scale (range-size x min max)
  "scales x to range-size from min/max rounding down for even numbers"
  (floor (* range-size (/ (- x min) (- max min)))))

(defun list-membership (xlist xval)
  (fz-membership xlist (regular-scale (1- (length xlist)) xval 0 1)))

(defun regular-scale (range-size x min max)
  "scales x to range-size from min/max rounding down for even numbers"
  (* range-size (/ (- x min) (- max min))))


(defun generate-interval (last-pitch)
  "This function generates an interval for the note to move to"
  (pick-an-int 0 last-pitch)

)

(defvar *pitch-panic* nil)
(defun pick-an-int (last-int last-pitch)
  "picks an interval from 3 ints"
  (let* ((winner-list (find-winner (make-and-score-n-ints 3 last-int last-pitch)))
	 (winner-interval (nth (second winner-list) *int-lookup*))
	 (winner-score (first winner-list)))
    (if (or (not (between (+ winner-interval last-pitch)
			  (first *instrument-range*)
			  (second *instrument-range*)))
	    (< winner-score 0))
      (progn (format t "Picking a new int, ~a (~a) bad, ~%" winner-interval (+ winner-interval last-pitch))
	     (if (not *pitch-panic*) (pick-an-int last-int last-pitch) (setf *pitch-panic nil)))

      ;(progn (format t "~a (~a) worked~%" winner-interval (+ winner-interval last-pitch))
	     winner-interval)))
(setf *pitch-panic* t)
(setf *pitch-panic* nil)

(defun between (x min max)
  "is within range"
  (and (> x min) (< x max)))


(defun make-and-score-n-ints (n last-int last-pitch)
  "gets n pitches and n scores"
  (if (= n 0) ()
    (let* ((interval-id (random (length *int-lookup*)))
	   (score (get-final-score interval-id last-int last-pitch)))
      ;(format t " int: ~a score: ~a~%" (nth interval-id *int-lookup*) score)
      (cons (list score interval-id) (make-and-score-n-ints (1- n) last-int last-pitch)))))


(defun get-final-score (test-id last-int last-pitch)
  "finds the membership of the interval in the fully weighted table"
  ;(format t "final interval weight table: ~a~%"
					;(round-list (fz-intersection *possible-ints* (weigh-direction last-pitch)) 2))
  (fz-membership (mapcar '* (fz-intersection (fz-union *possible-ints* ;list of 1 1 1 1 1 etc
						       (append (reverse (first *vector-sums*)) (list 0) (first *vector-sums*)))
					     *shape-map*				  
					     *favor-small*
					     (if *current-pcs* (fz-create-pc-int-list last-pitch) *possible-ints*)
					     (weigh-direction last-pitch))
			 (if (null *vector-sums*) '(1 1 1 1 1 1 1 1 1 1 1) 
			     (append (reverse (first *vector-sums*)) (list 0) (first *vector-sums*)))) test-id))
;multiplied vector-sums so they actually do something...


(defun weigh-direction (last-pitch)
  "weighs an interval table based on membership in instrument range"
  (fz-union (fz-weight *prefer-down* (fz-membership *high-in-range*
						    (fz-scale-pitch last-pitch *high-in-range*)))
	    (fz-weight *prefer-up* (fz-membership *low-in-range*
						  (fz-scale-pitch last-pitch *low-in-range*)))))


(defun fz-scale-pitch (test-pitch range-list)
  "scales the pitch to a number within a fuzzy range to check its membership"
  (/ (- test-pitch (first *instrument-range*))
     (/ *range-size* (length range-list))))

(defun fz-create-pc-int-list (last-pitch &optional (int-list *int-lookup*))
  "Takes in the last pitch and creates an interval fz-list using the pitch class-sets
-returns a list of ints that will take it to one of the desired pitch classes)"
  (if (null int-list) ()
      (cons (if (on-list (mod (+ (first int-list) last-pitch) 12) *current-pcs*) 1 .2) ;PC of next pitch if this int
	    (fz-create-pc-int-list last-pitch (rest int-list)))))

(defun on-list (x xlist)
  "this function returns 1 if the number is on the xlist"
  (cond ((null xlist) ())
	((= x (first xlist)) 1)
	(t (on-list x (rest xlist)))))
	 