#|GENERATE NOTVALS
==========================================================================
Functions for picking note values when generating a melodic line

Copyright (c) 2011 Alex Graham
==========================================================================|#

#|
;(mapcar (lambda (x) (second (assoc x (mapcar 'reverse *noteval-read*)))) '(e. s q q))

;S 3S E 3E Q 3Q

;normal (1)
'((s s s s) (e s s) (s s e) (e e) (q) (e. s))
;(2)
'((q. e) (h)

;syncopations
;(1)
'((s e s) (s e.))
;(2)
'((e q e))
;(3)
'((q. q.)

;half beats
'((s s) (e))

;triplets
'((3s 3s 3s) (3e 3e 3e) (3e+3e 3e) (3q 3q 3q))
|#
#|
(defvar *rhythm-markov* '((1 (1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 3 4 4 4 5 5 5))
			  (2 (2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 4 4 4 4 4 4 4))
			  (3 (3 3 3 3 3 3 3 3 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 2 2 2 2 4 4 5 5 5 5))
			  (4 (4 4 4 4 4 4 1 1 1 1 1 1 1 1 1 1 1 1 1))
			  (5 (5 5 4 1 1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 2 2 2))))

(defvar *rhythm-groups* '((1 ((s s s s) (e s s) (s s e) (e e) (q) (e. s) (q. e) (h)))
			(2 ((e q e) (q. q.)))
			(3 ((s e s) (s s) (e) (q. q.)))
			(4 ((3e 3e 3e)))
			(5 ((3q 3q 3q)))))
|#

(defvar *rhythm-groups* '((1 (((e s s) 2) ((e e) 3) ((q) 4) ((h) 2)))
			  (2 (((s s s s) 3) ((s s e) 1) ((e. s) 4)))
			  (3 (((q. e) 3) ((e q e) 4)))
			  (4 (((s e s) 3) ((s s) 2) ((e) 2) ((q. q.) 1)))
			  (5 (((3e 3e 3e) 4) ((3q 3q 3q) 1)))))



(defvar *rhythm-markov* '((1 ((1 15) (2 6) (3 8) (4 3) (5 4)))
			  (2 ((1 20) (2 6) (3 4) (4 3) (5 1)))
			  (3 ((1 22) (2 3) (3 8) (4 3) (5 5)))
			  (4 ((1 20) (4 5) (2 4)))
			  (5 ((1 20) (2 3) (3 3) (4 1) (5 4)))))


(defun fill-out-group-table (gtable)
  (if (null gtable) ()
      (cons (fill-out-group-line (first gtable)) (fill-out-group-table (rest gtable)))))

(defun fill-out-group-line (gline)
  "Passex a line '(1 (((e s s) 2) ((e e) 3))) fills it out"
  (if (numberp (first gline))
      (cons (first gline) (list (fill-out-group-line (second gline))))
      (if (null gline) ()
	  (append (print-n-from-freq (first gline)) (fill-out-group-line (rest gline))))))

(defun print-n-from-freq (freq-list &optional (n (second freq-list)))
  "return '((e e) 3) (e e) (e e) (e e)"
  (if (= n 0) ()
      (cons (first freq-list) (print-n-from-freq freq-list (1- n)))))


(defun phrase.pick-noteval-chain (xphrase)
  "picks beat group then beat"
  (let* ((last-entry (second (assoc (nv.last-chain-id xphrase) *rhythm-markov*))) ;beat chain from previous
	 (new-entry-id (nth (random (length last-entry)) last-entry)) ;random beat group id
	 (rhythm-group (second (assoc new-entry-id *rhythm-groups*)))     ;beat group
	 (selection (nth (random (length rhythm-group)) rhythm-group))
	 (numbered-selection (mapcar (lambda (x) (second (assoc x (mapcar 'reverse *noteval-read*)))) selection)))
    (setf (nv.last-chain-id xphrase) new-entry-id) ;set beat chain for next time
    ;(format t "~%chain:~a id: ~a selection: ~a ~%group: ~a" numbered-selection new-entry-id selection rhythm-group)
    (setf (noteval-chain xphrase) (rest numbered-selection))
    (first numbered-selection)))

(setf *rhythm-groups* (fill-out-group-table *rhythm-groups*))
(setf *rhythm-markov* (fill-out-group-table *rhythm-markov*))