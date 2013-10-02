#|PATTERN ANALYSIS
==========================================================================
Experimental pattern analysis functions

Copyright (c) 2011 Alex Graham
==========================================================================|#


;;basic noteval pattern matches steps through a statement and adds each
;;pattern to the pattern table. will be large at first but we can lower it
;;eventually by weeding out the low numbers

;; pattern table: ((pattern freq) (pattern freq) (pattern freq))

;(defvar *pattern-table*

(defvar *noteval-pattern-table* ())

;;take noteval list, run it through create-pattern list, run that through add-to-pattern-table
;;via mapcar

#|

(pattern.drop-below 3 (pattern.add-session-to-ptable '(3 4 5 6) *noteval-session-list* *noteval-pattern-table*))
|#


(defun pattern.drop-below (n ptable)
  "drops any patterns with count below n from ptable"
  (if (null ptable) ()
      (if (< (second (first ptable)) n)
	  (pattern.drop-below n (rest ptable))
	  (cons (first ptable) (pattern.drop-below n (rest ptable)))))
)

(defun pattern.add-session-to-ptable (sizes session-list ptable)
  "this function takes a list of noteval lists and adds it to ptable for each element in sizes"
  (mapc (lambda (x) (setf ptable
			  (add-session-list-to-ptable x session-list ptable))) sizes)
  ptable)

(defun add-session-list-to-ptable (n session-list ptable)
  "adds a list off noteval lists to a ptable with n atoms in pattern"
  (if (null session-list) ptable
      (add-session-list-to-ptable n
				  (rest session-list)
				  (add-pattern-list-to-table (create-pattern-list n (first session-list))
							     ptable))))

(defun add-pattern-list-to-table (xlist ptable)
  "adds a list of patterns to a pattern table"
  (mapc (lambda (x) (setf ptable (add-to-pattern-table x ptable))) xlist)
  ptable
)

(defun create-pattern-list (n xlist)
  "creates a list of lists n long of each n in xlist (1 2 3 4 5) 2 ((1 2) (2 3) (3 4) etc"
  (if (or (< (length xlist) n) (null xlist)) ()
      (cons (firstn n xlist) (create-pattern-list n (rest xlist)))))


(defun add-to-pattern-table (xvalue ptable &optional (recurse-table ptable))
  "this function takes a value, goes into the pattern table, sees if it is there,
if not, adds it, if so, add to its frequency."
  (cond ((null ptable) (list (list xvalue 1))) ;start a new table if it's blank
	((null recurse-table) ;add entry if it wasn't found
	 (append ptable (list (list xvalue 1))))
	((not (equal xvalue (first (first recurse-table))))
	 (add-to-pattern-table xvalue ptable (rest recurse-table))) ;check the next one
	(t (substitute (list (first (first recurse-table)) ;add to the frequency if found
			     (1+ (second (first recurse-table))))
		       (assoc (first (first recurse-table)) ptable)
		       ptable))))


(defun add-notevals-to-ptable (xlist ptable)
  "adds a list of patterns to a pattern table"
  (mapc (lambda (x) (setf ptable (add-to-pattern-table x ptable))) xlist)
  ptable
)

#|
(defmethod equal-struct ((a test-struct) (b test-struct))
  (and (equal (test-struct-x a) (test-struct-x b))
       (equal (test-struct-y a) (test-struct-y b))))

(defmethod equal-struct2 ((a test-struct))
  (and (equal (test-struct-x a) (test-struct-x a))
       (equal (test-struct-y a) (test-struct-y a))))
|#