#|CONTROL FUNCTIONS
==========================================================================
Functions for creating melodic lines, either from the slime console or 
the control loop

Copyright (c) 2011 Alex Graham
==========================================================================|#

;;testing functions
;;-------------------------

(defun slime.play-line (length)
  "Function called from slime, tests fuzzy engine"
  (setf output.note-queue (fuzzy.generate-line length))

  (max.start-playing)
)

(defun fuzzy.generate-line (length &optional (count 0) last-note)
  "Creates a line (list of notes) using the fuzzy engine of length length"
  (if (> count length) ()
      (let ((the-note (generate-note (make-instance 'note) ;generate a note, if there's no last note give it a starting note
				     (if (null last-note) (make-instance 'note :pitch 40 :velocity 100 :noteval 1) last-note))))
	(cons the-note
	      (fuzzy.generate-line length (1+ count) the-note)))))

(defun slime.play-phrase (length start-pitch)
  "Create a phrase and then send it to the fuzzy generator"
  (let ((the-phrase (make-instance 'phrase :length length :start-pitch start-pitch)))
    (format t "~%shape-map: ~a~%velocity-map: ~a ~a~%" (shape-map the-phrase) (velocity-map the-phrase) 
	    (get.scale-velocity-map the-phrase))
    (setf output.note-queue (fuzzy.generate-from-phrase the-phrase))
   
   (max.start-playing))
)


(defun fuzzy.play-phrase (xphrase)
  "this function controls the playing of a phrase and should be called from output when next note is neeeded"

  ;create a starter note if this is a new phrase
  (if (null (last-note xphrase)) (make-instance 'note
						:pitch (start-pitch xphrase) 
						:velocity 100 
						:noteval 1))
  
  ;if we haven't yet scaled the shape map, scale it to our start-pitch
  (if (null (shape-map-scaledp xphrase)) (phrase.scale-shape-map xphrase)) ;(setf xphrase (phrase.scale-shape-map xphrase)))
  (if (null (velocity-map-scaledp xphrase)) (phrase.scale-velocity-map xphrase))

  (if (> (phrase-position xphrase) (phrase-length xphrase)) (progn (setf (currently-playing xphrase) nil) (stop-playing))
      (let ((the-note (phrase.generate-note xphrase)))
	;save the new position by adding the noteval and save last note
	(setf (phrase-position xphrase) (+ (phrase-position xphrase) (noteval the-note)))
	(setf (last-note xphrase) the-note)
	;cons it onto the next note, passing the phrase
	(cons the-note
	      output.note-queue)))
)


(defun fuzzy.generate-from-phrase (xphrase &optional (count 0))
  "this function creates a line by following a phrase"

  ;create a starter note if this is a new phrase
  (if (null (last-note xphrase)) (make-instance 'note
						:pitch (start-pitch xphrase) 
						:velocity 100 
						:noteval 1))
  
  ;if we haven't yet scaled the shape map, scale it to our start-pitch
  (if (null (shape-map-scaledp xphrase)) (phrase.scale-shape-map xphrase)) ;(setf xphrase (phrase.scale-shape-map xphrase)))
  (if (null (velocity-map-scaledp xphrase)) (phrase.scale-velocity-map xphrase))

  (if (> count (phrase-length xphrase)) ()
      (let ((the-note (phrase.generate-note xphrase)))
	;save the new position by adding the noteval and save last note
	(setf (phrase-position xphrase) (+ (phrase-position xphrase) (noteval the-note)))
	(setf (last-note xphrase) the-note)
	;cons it onto the next note, passing the phrase
	(cons the-note
	      (fuzzy.generate-from-phrase xphrase (+ count (noteval the-note))))))
)
