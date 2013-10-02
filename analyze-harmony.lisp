#|HARMONIC ANALYSIS
==========================================================================
The following functions collect, analyze and store harmonic data, currently:

prime-forms (frequency table and list of PFs)
interval-vectors (???)
note-from-max (stores a list of borax events)

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defvar *prime-form-freq* ())
(defvar *prime-form-list* ())
(defvar *prime-form-vectors* ())
(defvar *pitch-set-vectors* ())
(defvar *vector-sums* ())
(defvar *current-pcs* ())
(defvar *recent-pitches* ())

;;;called by max
;;;----------------------
(defun max.prime-forms (xlist)
  "this will take a list of pitches, convert to prime form, and add it to a
  frequency table (0 0 0 2 3 3 4 4) and a list of prime forms ((0 1 2) (0 4 5))"
  (let* ((xlist-fix (if (numberp xlist) (list xlist) xlist))
	(prime-form (ti-primeform xlist-fix)))
    (setq *prime-form-freq* (append-and-sort prime-form *prime-form-freq*))
    (setq *prime-form-list* (add-list-to-lists prime-form *prime-form-list*))
    (interval-vectors xlist-fix)
    (mapcar (lambda (x) (setf *current-pcs* (add-to-rotation 7 x *current-pcs*))) (find-pcs xlist-fix))
    (mapcar (lambda (x) (setf *recent-pitches* (add-to-rotation 3 x *recent-pitches*))) xlist-fix)
    prime-form))

(defun interval-vectors (xlist)
  "adds to interval vector lsits"
  (let ((prime-form (ti-primeform xlist))
	(pitch-set (find-sets xlist)))
    (setq *prime-form-vectors* (add-list-to-lists
				(incl-vec prime-form '(1 2 3 4 5 6))
				*prime-form-vectors*))
    (setq *pitch-set-vectors* (add-list-to-lists
			       (incl-vec pitch-set '(1 2 3 4 5 6))
			       *pitch-set-vectors*))
    (setf *vector-sums* (add-to-sum-rotation 5 (incl-vec pitch-set '(1 2 3 4 5 6 7 8 9 10 11)) *vector-sums*))))


(defun add-to-sum-rotation (num xlist rlist)
  (cond ((null rlist)
	 (list xlist))
	((< (length rlist) num)
	 (format t "adding")
	 (insertn 1 xlist (subn 1 (add-lists xlist (first rlist)) rlist)))
	(t (let* ((subbed-old (add-lists (mapcar (lambda (x) (- 0 x)) (first (last rlist))) (first rlist)))
		  (new-added (add-lists xlist subbed-old)))
	     (insertn 1 xlist (butlast (subn 1 new-added rlist)))))))

(defun add-to-rotation (num x rlist)
  "Adds a number to a list and pushes the end one out"
  (if (>= (length rlist) num)
      (insertn 0 x (butlast rlist))
      (insertn 0 x rlist)))


(defun find-pcs (notes)
  (if (null notes) ()
     (filter-successive-duplicates (sort (cons (mod (first notes) 12)
	    (find-pcs (rest notes))) #'<))))