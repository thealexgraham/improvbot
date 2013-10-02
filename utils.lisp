#|UTILITIES
==========================================================================
Various utility functions

Copyright (c) 2011 Alex Graham

Permission is granted for use, provided that the author's name and 
copyright are retained in this file. The author makes no warranties 
with respect to this work.
==========================================================================|#

(defun 1st (xlist) (first xlist))
(defun 2nd (xlist) (second xlist))
(defun 3rd (xlist) (third xlist))
(defun 4th (xlist) (fourth xlist))
(defun 5th (xlist) (fifth xlist))
(defun 6th (xlist) (sixth xlist))
(defun 7th (xlist) (seventh xlist))
(defun 8th (xlist) (eighth xlist))
(defun 9th (xlist) (ninth xlist))
(defun 10th (xlist) (tenth xlist))

(setf *random-state* (make-random-state t))

;;; general use fuzzy utility functions
;;;------------------------------------

(defun find-middle (low high)
  "finds middle between low and high"
  (+ low (/ (- high low) 2)))

(defun find-fraction-between (x low high)
  "Finds where number is between two numbers IE 1.75 between 1 and 2.5 is .5"
  (/ (- x low) (- high low)))

(defun find-membership-between (x pointa pointb)
  "Finds the membership between two points (position value) of x"
  (+ (second pointa) (* (- (second pointb) (second pointa)) 
			(find-fraction-between x (first pointa) (first pointb)))))

(defun find-winner (xlist &optional (high-score 0) (winner 0))
  "from a list of (score winner) send back the score with winner"
  (cond ((null xlist) (list high-score winner))
        ((>= (first (first xlist)) high-score)
         (setf high-score (first (first xlist)))
         (setf winner (second (first xlist)))
         (find-winner (rest xlist) high-score winner))
         (t (find-winner (rest xlist) high-score winner))))

(defun get-id (interval)
  (position interval *int-lookup*)
)

(defun get-int (id)
  (nth id *int-lookup*))


(defun round-list (xlist d)
  (mapcar (lambda (x) (round-float x d)) xlist))

(defun round-float (f d)
  (if (and (/= f 0) (/= f 1))
    (nth-value 0 (read-from-string 
                  (format nil "~25,V,,,F" d f))) f))
(defun flast (xlist)
  (first (last xlist)))

(defun fz-make-trapezoid+ (howmany+ lastzero+ firstone+ lastone+ firstzero+)
"fuzzy set of howmany elements ramping from 0 at lastzero to 1 at firstone and back at lastone to firstzero"
  (let* ((howmany (1- howmany+))
	 (lastzero lastzero+)
	 (firstone (1- firstone+))
	 (lastone (1- lastone+))
	 (firstzero (1- firstzero+))
	 (range (- firstone lastzero)) 
	 (increment (/ 1  range)))
    (append (make-flat lastzero 0.0) 
           (make-ramp range  increment)
           (make-flat (+(- lastone firstone) 1) 1.0)
           (reverse(make-ramp (- firstzero lastone)  (/ 1 (- firstzero lastone))))
           (make-flat (- howmany firstzero 1) 0.0))))

;;;;;;;;;;;;;;;;;;;;;;;;


;;;HASH TABLES

(defun hprint (h &optional (stream t)) 
  "prints a hash table line by line"
  (maphash #'(lambda (key val) (format stream "~&~A:~10T ~A" key val)) h)
  h)

(defun ordered-keys (table)
  (sort
   (loop for key being each hash-key of table
         collect key)
   #'>))

(defun hash-to-list (hashtable)
  "Return a list that represent the hashtable."
  (let (mylist)
    (maphash (lambda (kk vv) (setq mylist (cons vv mylist))) hashtable)
    mylist
  )
)

(defun hash-to-list> (hashtable)
  "Return a list that represent the hashtable."
  (let (mylist)
    (mapcar (lambda (x) (setq mylist (cons (gethash x hashtable) mylist))) (ordered-keys hashtable))
    mylist
  )
)

;;NEW
;;-------------------------

(defun smallest (xlist &optional (smallest-so-far (first xlist)))
  "returns the smalles value in xlist"
  (if (null xlist) smallest-so-far
      (if (< (first xlist) smallest-so-far)
	  (smallest (rest xlist) (first xlist))
	  (smallest (rest xlist) smallest-so-far))))

(defun alast (seq)
  "outputs the last element of the sequence, similar to first"
  (first (last seq)))


;;OTHER
(defun +/- (x y)
  "50/50 change of adding or subtracting"
  (if (= 0 (random 2))
    (+ x y)
    (- x y)))


(defun append-and-sort (xlist ftable)
  "adds a list to another list and sorts"
    (sort (append xlist ftable) #'<))

(defun add-list-to-lists (xlist flist)
  "adds a list to the end of a list of lists"
  (reverse (cons xlist (reverse flist))))


#|(defun frequency-table (xlist)
  (if (null xlist) ()
    (let* ((xassoc (assoc (first xlist) *pitch-set-freq* :test #'equal)))
      (if xassoc (add-to-table (first xlist) *pitch-set-freq*)|#

(defun subn (n sub xlist)
  "replaces the entry at index n (1 based) in xlist with sub"
   (append (nfirst xlist (- n 1))  (cons sub (restn (+ n 1) xlist))))

(defun subi (i sub xlist)
  "replaces the entry at index i (0 based) in xlist with sub"
   (append (nfirst xlist i)  (cons sub (restn (+ i 2) xlist))))

(defun insertn (n insert xlist)
  "replaces the entry at index n (1 based) in xlist with sub"
   (append (nfirst xlist n)  (cons insert (restn (+ 1 n) xlist))))

(defun nfirst (xlist n)
  "returns the first n entries of xlist"
  (if (<= n 0) ()
    (cons (first xlist) (nfirst (rest xlist) (1- n)))))

(defun firstn (n xlist)
  "returns the first n entries of xlist"
  (cond ((<= n ) ())
      (t (cons (first xlist) (nfirst (rest xlist) (1- n))))))

(defun firstn (n xlist)
  "returns the first n entries of xlist"
  (if (or (null xlist) (<= n 0)) ()
      (cons (first xlist) (firstn (1- n) (rest xlist)))))


(defun restn (n xlist)
  "returns the rest of xlist from n (1 based)"
  (last xlist (- (length xlist) (- n 1))))


(defun lookup-x-subn (x n sub xlist)
  "in an ((x (n n n)) (x (n n n))) list, replaces n with sub at x in xlist"
  (substitute (list x (subn n sub (second (assoc x xlist)))) (assoc x xlist) xlist))

(defun lookup-x-setn (x n sub xlist)
  "in an ((x (n n n)) (x (n n n))) list, replaces n with sub at x in xlist"
  (if (nth n (second (assoc x xlist)))
    (substitute (list x (subn n sub (second (assoc x xlist)))) (assoc x xlist) xlist)))

(defun lookup-x-setn (x n sub xlist)
  "in an ((x (n n n)) (x (n n n))) list, replaces n with sub at x in xlist"
  (if (nth n (second (assoc x xlist)))
    (substitute (list x (subn n sub (second (assoc x xlist)))) (assoc x xlist) xlist)))

(defun lookup-x (x xlist)
  "returns n in ((x (n))"
  (first (second (assoc x xlist))))

(defun lookup (x xlist)
  "returns list of asssoc"
  (second (assoc x xlist)))

(defun lookup-x-and-sub (x sub xlist)
  (substitute (subn 2 sub (assoc x xlist)) (assoc x xlist) xlist))

(defun set-hash-x (i n hash)
  (setf (gethash i hash) n))



(defun find-sets (notes &optional (base-notes (sub-lowest-from-list notes)))
  "function to find a pitch set of given notes"
  (if (null base-notes) ()
    (filter-successive-duplicates (sort (cons (mod (first base-notes) 12)
		(find-sets () (rest base-notes))) #'<))
  )
)

(defun find-sets-with-duplicates (notes &optional (base-notes (sub-lowest-from-list notes)))
  "function to find a pitch set of given notes"
  (if (null base-notes) ()
    (sort (cons (mod (first base-notes) 12)
		(find-sets-with-duplicates () (rest base-notes))) #'<)
  )
)

(defun find-pcs (notes)
  (if (null notes) ()
     (sort (cons (mod (first notes) 12)
	    (find-pcs (rest notes))) #'<)))

(defun sub-lowest-from-list (xlist &optional (xsorted (sort xlist #'<)) (lowest (first xsorted)))
  "function to substract lowest number from each in list"
    (if (null xsorted) ()
      (cons (- (first xsorted) lowest)
	    (sub-lowest-from-list () (rest xsorted) lowest))))

(defun filter-successive-duplicates (xlist &optional last-num)
  "filters any SUCCESSIVE duplicates"
  (if (null xlist) ()
    (if (null last-num)
      (cons (first xlist)
	    (filter-successive-duplicates (rest xlist) (first xlist)))
      (if (= (first xlist) last-num)
	(filter-successive-duplicates (rest xlist) (first xlist))
	(cons (first xlist)
	      (filter-successive-duplicates (rest xlist) (first xlist)))))))