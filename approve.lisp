#|APPROVE
==========================================================================
Functions to add melodies that user approves of into database for analyzation.

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defvar !approve-recent ())
(defvar !approve-kept ())
(defvar !approve-kept-1 ())
(defvar !approve-kept-2 ())
(defvar !approve-kept-3 ())
(defvar @approve-length 10)
(defvar *approve-history* ())

(defun approve.next ()
  "Create a phrase and then send it to the fuzzy generator"
  (let* ((start-pitch (+ (random 10) 45))
	(length @approve-length)
	(the-phrase (make-instance 'phrase :length length :start-pitch start-pitch)))
       
    (format t "~%shape-map: ~a~%velocity-map: ~a ~a~%" (shape-map the-phrase) (velocity-map the-phrase) (get.scale-velocity-map the-phrase))
    (setf output.note-queue (fuzzy.generate-from-phrase the-phrase))
    (setf !approve-recent (cons output.note-queue !approve-recent))
   
   (max.start-playing))
)

(defun approve.yes-next-1 ()
  (setf !approve-kept-1 (cons (first !approve-recent) !approve-kept-1)) (approve.next))

(defun approve.yes-next-2 ()
  (setf !approve-kept-2 (cons (first !approve-recent) !approve-kept-2)) (approve.next))

(defun approve.yes-next-3 ()
  (setf !approve-kept-3 (cons (first !approve-recent) !approve-kept-3)) (approve.next))

(defun approve.yes-next ()
  (approve.yes)
  (approve.next))

(defun create-real-list (note-list)
  (mapcar (lambda (x) (list (pitch x) (velocity x) (noteval x))) note-list))


(defun approve-save ()
  (setf *approve-history* (cons (list (mapcar 'create-real-list !approve-kept-1) 
				      (mapcar 'create-real-list !approve-kept-2) 
				      (mapcar 'create-real-list !approve-kept-3))
	*approve-history*)))

(defun approve-save ()
  (write-list (mapcar 'create-real-list !approve-kept-1) "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history-1.txt")
  (write-list (mapcar 'create-real-list !approve-kept-2) "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history-2.txt")
  (write-list (mapcar 'create-real-list !approve-kept-3) "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history-3.txt")
  (write-list (append (mapcar 'create-real-list !approve-kept-1) 
		      (mapcar 'create-real-list !approve-kept-2) 
		      (mapcar 'create-real-list !approve-kept-3)) 
	      "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history.txt")
  (approve-clear))

(defun approve-clear ()
  (setf !approve-kept-1 ())
  (setf !approve-kept-2 ())
  (setf !approve-kept-3 ()))

;(read-file "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history.txt")

;(setf *approve-list* (append (read-file "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history-1.txt") (read-file "/Users/improvbot/Dropbox/lispdir/projects/improvbot/files/approve-history-2.txt")))

;(mapcar (lambda (x) (mapcar (lambda (y) (first y)) x)) *approve-list*)