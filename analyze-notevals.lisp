#|NOTE VALUE ANALYSIS
==========================================================================
Collect and analyze note values into ratio tables, also responsible for
keeping track of the default noteval length (ratio of 1)

Copyright (c) 2011 Alex Graham
==========================================================================|#


(defvar ^nvv 1)

(defvar *noteval-table* (append '((1/6) (1/4) (1/3) (1/2) (2/3) (1) (2) (3) (4)) 
				(list (list (+ 1 1/2)) (list (+ 1/2 1/4)) (list (+ 1/4 1/8)))))

(defvar *noteval-weights* (append  '((1/6 t) (1/4) (1/3 t) (1/2) (2/3 t) (1) (2) (3) (4))				   
				  (list (list (+ 1 1/2)) (list (+ 1/2 1/4)) (list (+ 1/4 1/8)))))

(defvar *noteval-read* (append '((1/6 3s) (1/4 s) (1/3 3e) (1/2 e) (2/3 3q) (1 q) (2 h) (3 h.) (4 w)) 
				(list (list (+ 1 1/2) 'q.) (list (+ 1/2 1/4) 'e.) (list (+ 1/4 1/8) 's.))))



;s s. e e. q q. 3e 3q h h. w w.

;(1/6 3s) (1/4 s) (

;((1 1000) (1/2 432) (1/4 233) etcc


#| to do
-------------------------
1. have it analyze incoming rhythms by context,
   like if there are three notes in a row, two of them
   are triplet length and one is closer to a dotted,
   make it a triplet anyway

2. have it be able to figure out the tempo just from my
   playing using a similar system relating to context,
   figure out what the beats are by having it divisible
   by whatever.
|#

(defvar *noteval-default* 1000)

(defvar @delta-variance 1)


;;for incoming notes, need to compare them against all the things

;;max functions
;;-------------------------

(defun max.tap-tempo (tap-delta)
  "Max sends an updated delta whenever a tap tempo is used. this function
assigns this new delta to 1, the default note val, or a quarter and the 
rest of the note value deltas are created accordingly by multiplying the 
delta by the corresponding ratio"
  ;;set the default delta
  (setf *noteval-default* tap-delta)
  ;;reset all of the ratios
  (setf *noteval-table* (multiply-noteval-ratios *noteval-default* *noteval-table*))
  (format t "~%***Default delta: ~a~%~%" *noteval-default*)
)

;;init functions
;;-------------------------
(defun notevals.initialize ()
  (setf *noteval-table* (append '((1/6) (1/4) (1/3) (1/2) (2/3) (1) (2) (3) (4)) 
				(list (list (+ 1 1/2)) (list (+ 1/2 1/4)) (list (+ 1/4 1/8)))))
  (setf *noteval-default* 1000))

;;top level functions
;;-------------------------

(defun analyze-noteval (delta)
  (let ((the-noteval (find-closest-noteval delta *noteval-table*)))
    
    #|(format t "~%delta: ~a noteval: ~a difference: ~a" 
	    (round delta) (second (assoc the-noteval *noteval-read*)) 
	    (* (abs (- delta (second (assoc the-noteval *noteval-table*))))
	       (if (second (assoc (first (first *noteval-table*)) *noteval-weights*)) ^nvv 1)))
|#
 
    (setf *noteval-table* (update-noteval-table the-noteval delta *noteval-table*))
    (lisper-send 'get-tempo (ceiling (setf *noteval-default* (second (assoc 1 *noteval-table*)))))
    (second (assoc the-noteval *noteval-read*))

    ;(format t " tempo: ~a" *noteval-default*)
    0
)
  ;(setf *noteval-list* (cons (find-closest-noteval delta *noteval-table*) *noteval-list*))
)

(defun update-noteval-table (noteval delta nvtable)
  "updates the table based off of the latest incoming delta, maybe do the difference between"
  (let* ((old-delta (second (assoc noteval nvtable))))
    (multiply-noteval-ratios (/ (- old-delta (* (- old-delta delta) @delta-variance)) 
				(first (assoc noteval nvtable))) nvtable)))

(defun multiply-noteval-ratios (delta nvtable)
  "goes through the noteval table and multiplies the delta to the ratio
and stores it in the spot for the delta."
  (if (null nvtable) ()
      (cons (list (first (first nvtable)) (* delta (first (first nvtable))))
	    (multiply-noteval-ratios delta (rest nvtable))))
)

;;delta analysis functions
;;-------------------------
(defun find-closest-noteval (delta nvtable &optional (closest (first (first nvtable))) (amount nil))
  "inputs a delta (from max) and finds what the delta's closest notevalue in the nvtable is"
  (if (null nvtable) closest
      (let* ((difference (* (abs (- delta (second (first nvtable))))
			    (if (second (assoc (first (first nvtable)) *noteval-weights*)) ^nvv 1))))
	(cond ((null amount) ;if first time, assume the first is the closest match
	       (find-closest-noteval delta (rest nvtable) (first (first nvtable)) difference))
	      ((< difference amount) ;if the difference is less than current closest, make this the closest
	       (find-closest-noteval delta (rest nvtable) (first (first nvtable)) difference))
	      (t ;if larger, keep the old value
	       (find-closest-noteval delta (rest nvtable) closest amount)))))
)

(defun get-noteval (delta)
  "accessor function for input to use for ease of use"
  (find-closest-noteval delta *noteval-table*))


;;;top level function
;;;----------------------

(defun add-to-noteval-table (delta nvtable)
  "called by input-functions, takes a delta and a rhythm table, then ????"
  (cond ((null *available-rhythms*) nvtable) ;unless we have no available rhythms
	(t;;(null (lookup-x 1 rtable))
	 (update-rhythm-table (find-closest-ratio (/ delta ;find the closest ratio in the rhythm table and update it
						     (first (last *available-rhythms*))) nvtable) delta nvtable))))
	;;(t (update-rhythm-table (find-closest-ratio (/ delta (lookup-x 1 rtable)) rtable) delta rtable))))

;;;helper functions
;;;----------------------
(defun update-rhythm-table (ratio delta nvtable)
  "updates the ratio table with the new delta and re-ratios it"
  (cond ((null (lookup-x ratio nvtable))
	 (lookup-x-and-sub ratio (list delta) nvtable))
	(t (re-ratio (/ (+ delta (lookup-x ratio nvtable)) 2) ratio nvtable))))

(defun find-closest-ratio (xratio xlist &optional (closest xratio) (amount nil))
  "finds the closest ratio from a list of ratios in rhythm-table"
  (if (null xlist) closest
      (let* ((difference (* (abs (- xratio (first (first xlist)))) 
			    (second (assoc (first (first xlist)) *noteval-weights*)))))
	(cond ((null amount)
	       (find-closest-ratio xratio (rest xlist) (first (first xlist)) difference)) ;find closest with the first as default
	      ((< difference amount)
	       (find-closest-ratio xratio (rest xlist) (first (first xlist)) difference))
	      (t (find-closest-ratio xratio (rest xlist) closest amount))))))

(defun re-ratio (new-delta ratio nvtable)
  "re ratios. <--- what does this mean?"
  (if (null nvtable) ()
    (cons (list (first (first nvtable)) (list (floor (/ new-delta (/ ratio (first (first nvtable)))))))
	  (re-ratio new-delta ratio (rest nvtable)))))
