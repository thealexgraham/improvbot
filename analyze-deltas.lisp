#|DELTA ANALYSIS
==========================================================================
The following functions maintain the ratio table responsible for keeping track
of note value times

Copyright (c) 2011 Alex Graham
==========================================================================|#


(defvar *ratio-table* '((1/6 (1)) (1/4 ()) (1/3 ()) (1/2 ()) (1 ())))
;(2/3 ())

(defun add-to-rhythm-table (delta rtable)
  "called by input-functions, takes a delta and a rhythm table, then ????"
  (cond ((null *available-rhythms*) rtable)
	(t;;(null (lookup-x 1 rtable))
	 (let ((updated-table (update-rhythm-table (find-closest-ratio (/ delta
						     (first (last *available-rhythms*))) rtable) delta rtable)))
	   (if (not (null (second (assoc 1 updated-table))))		  
	       (setf *noteval-default* (first (second (assoc 1 updated-table))))
	       (lisper-send 'get-tempo *noteval-default*))
	   updated-table))))


;;;helper functions
;;;----------------------
(defun update-rhythm-table (ratio delta rtable)
  "updates the ratio table with the new delta and re-ratios it"
  (cond ((null (lookup-x ratio rtable))
	 (lookup-x-and-sub ratio (list delta) rtable))
	(t (re-ratio (/ (+ delta (lookup-x ratio rtable)) 2) ratio rtable))))

(defun find-closest-ratio (xratio xlist &optional (closest xratio) (amount nil))
  "finds the closest ratio from a list of ratios in rhythm-table"
  (if (null xlist) closest
      (let* ((difference (abs (- xratio (first (first xlist))))))
	(cond ((null amount)
	       (find-closest-ratio xratio (rest xlist) (first (first xlist)) difference))
	      ((< difference amount)
	       (find-closest-ratio xratio (rest xlist) (first (first xlist)) difference))
	      (t (find-closest-ratio xratio (rest xlist) closest amount))))))

(defun re-ratio (new-delta ratio rtable)
  "re ratios. <--- what does this mean?"
  (if (null rtable) ()
    (cons (list (first (first rtable)) (list (floor (/ new-delta (/ ratio (first (first rtable)))))))
	  (re-ratio new-delta ratio (rest rtable)))))

#|
----AVAILABLE-RHYTHMS
***************************************************
Adds to a list of deltas ((avg last) (avg last)) by finding the closest existing

**************************************************
|#

;;;top level function
;;;----------------------
(defun add-rhythm (delta xlist &optional (var 50) (maxvar 100) (min 50))
  "adds delta to rhythm list by checking for the closest value then adding to the average and setting
  it as the most recent value- xlist should be in format: ((avg last) (avg last). If there is nothing
  within variance var, add-rhythm will try again with a higher variance. If the function tries 5 times,
  it will add the number."
  (let* ((match (if (> delta min)
		  (check-for-close delta xlist var) 'below)))
    (cond ((equal match 'below) xlist)
	  ((numberp match)
	   (update-deltas delta match xlist))
	  ((<= var maxvar)
	   (add-rhythm delta xlist (+ var 5) maxvar min))
	  (t (cons delta xlist)))))

;;;helper functions
;;;----------------------
(defun check-for-close (delta xlist var)
  "checks to see if there is a value in xlist which is within var of the given delta"
  (cond ((null xlist) ())
	((> (abs (- delta (first xlist))) var)
	 (check-for-close delta (rest xlist) var))
	(t (first xlist))))

(defun init-new-rhythm (delta xlist)
  "Adds a new entry in list for delta"
  (cons (list delta delta) xlist))


(defun update-deltas (delta match xlist)
  "adds to the average in match and then replaces the last"
    (subi (position match xlist) (weighed-avg match delta 3) xlist))

(defun weighed-avg (x y n)
  "averages x and y * n"
  (round-float (float (/ (+ x (* y n)) (1+ n))) 0))