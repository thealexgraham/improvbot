#|GENERATE PITCH
==========================================================================
Functions called by Max to send notes out through the queue.

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defvar output.next-note ())
(defvar output.note-queue())

(defun spit-hash (key value)
  value)


;;preperation functions
;;-------------------------
(defun output.get-literal (note-hash)
  ;(setf output.delta-queue (maphash #'spit-hash note-hash))
  (if (hash-table-p note-hash)
      (setf output.note-queue (hash-to-list> note-hash))
      (setf output.note-queue note-hash))
  (setf output.note-queue note-hash)
  ;(format t "~%~% notequet: ~a ~%" output.note-queue)
)


;;send functions
;;--------------------------
(defun max.send-delta ()
  "sends max the next note and then prepares the next one"
  (floor (* (noteval (first output.note-queue)) *noteval-default*)))

(defun max.send-literal-delta ()
  "sends max the next note and then prepares the next one"
  (delta (first output.note-queue)))


(defun max.send-note ()
  "sends max the next note"
  (let ((pitch (pitch (first output.note-queue)))
	(velocity (velocity (first output.note-queue)))
	(duration (- (floor (* (noteval (first output.note-queue)) *noteval-default*))
		      100)));(duration (first output.note-queue))));) ;currently duration is subtracted from delta
    ;(format t "P:~A V:~A N:~a~%" pitch velocity (noteval (first output.note-queue)))
    (format t "~a ~a (~a) " (second (assoc (noteval (first output.note-queue)) *noteval-read*)) pitch velocity)
    (setf output.note-queue (rest output.note-queue))
    (list pitch velocity duration)))


;;staging functions
;;--------------------------
(defun max.ready-next ()
  "sets the next note ready for the send function"

  (if (and (not (null !current-phrase)) (not (null (currently-playing !current-phrase)))) ;if we have a phrase and it's playing, play it
      (setf output.note-queue (fuzzy.play-phrase !current-phrase)))

  (if (null (first output.note-queue))
      (stop-playing))
)
  


#|
;;send functions
;;--------------------------
(defun max.send-delta ()
  "sends max the next note and then prepares the next one"
  (fourth (first output.note-queue)))

(defun max.send-note ()
  "sends max the next note"
  (let ((pitch (first (first output.note-queue)))
	(velocity (second (first output.note-queue)))
	(duration (third (first output.note-queue))))
    (setf output.note-queue (rest output.note-queue))
    (list pitch velocity duration)))
|#