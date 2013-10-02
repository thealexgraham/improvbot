#|NOTE GENERATION
==========================================================================
Generate notes for melodic lines

Copyright (c) 2011 Alex Graham
==========================================================================|#


;;note class

(defclass note ()
  ((pitch :accessor pitch :initarg :pitch)
   (velocity :accessor velocity :initarg :velocity)
   (duration :accessor duration :initarg :duration :initform 0)
   (delta :accessor delta :initarg :delta :initform 0)
   (noteval :accessor noteval :initform 0 :initarg :noteval))
)


(defvar !note (make-instance 'note))

(defvar *instrument-range* '(60 80))
(defvar *range-size* (- (2nd *instrument-range*) (1st *instrument-range*)))

(defun phrase.generate-note (xphrase &optional (new-note (make-instance 'note)))
  "generates a new note using data from a phrase"

  (cond ((null (last-note xphrase))
	 (setf (pitch new-note) (start-pitch xphrase))
	 (setf (velocity new-note) (velocity-start xphrase)))
	(t
	 (setf (pitch new-note) (phrase.generate-pitch xphrase new-note))
	 (setf (velocity new-note) (phrase.generate-velocity xphrase new-note))))

  (setf (noteval new-note) (phrase.generate-noteval xphrase new-note))
  (setf (duration new-note) 50)

; set the duration as a little under the delta
  new-note ;return the new note for parent function to set

)

(defun phrase.generate-pitch (xphrase new-note)
  "This function generates a pitch to store in the note arg of the passed note using a phrase"
  (setf (pitch new-note) (+ (pitch (last-note xphrase))
			    (phrase.generate-interval xphrase)))
  (pitch new-note)
)

(defun phrase.generate-velocity (xphrase new-note)
  "This function generates a velocity to store in the velocity of a note"
  
  (let* ((position (phrase-position xphrase))
	 (phrase-length (phrase-length xphrase))
	 (velocity-map (velocity-map xphrase))
	 (velocity-value (list-membership velocity-map ;;find the value the phrase is at position
				     (/ position phrase-length))))
    (setf (velocity new-note) (ceiling velocity-value)))
    ;(setf (velocity new-note) 50)
    (velocity new-note)
)

(defun phrase.generate-noteval (xphrase new-note)
  "This function generates a noteval to store in the noteval of a note"
  ;get the next noteval off the noteval chain from the phrase being passed around
  (let* ((next-noteval (first (noteval-chain xphrase))))
    (if (null next-noteval) (setf next-noteval (phrase.pick-noteval-chain xphrase))
	(setf (noteval-chain xphrase) (rest (noteval-chain xphrase))))

    (setf (noteval new-note) next-noteval))
  (noteval new-note)
)



(defun generate-note (new-note last-note)
  "Generates a full note with pitch/velocity/notevals"

  (setf (pitch new-note) (generate-pitch new-note last-note))
  (setf (velocity new-note) (generate-velocity new-note last-note))
  (setf (noteval new-note) (generate-noteval new-note last-note))
  (setf (duration new-note) 50) ; set the duration as a little under the delta

  new-note ;return the new note for parent function to set
)


(defun generate-pitch (new-note last-note)
  "This function generates a pitch to store in the note arg of the passed note"
  (setf (pitch new-note) (+ (pitch last-note)
			    (generate-interval (pitch last-note))))
  (pitch new-note)
)

(defun generate-velocity (new-note last-note)
  "This function generates a velocity to store in the velocity of a note"
  (setf (velocity new-note) 100)
  (velocity new-note)
)

(defun generate-noteval (new-note last-note)
  "This function generates a noteval to store in the noteval of a note"
  (setf (noteval new-note) 1/2)
  (noteval new-note)

)


#|
(defun transpose-to-range (pitch-list range)
  "transposes by octaves to try and fit a list of pitches to a range (low high)
returns nil if unable"

  (cond ((and (> (largest pitch-list) (second range))
	      (< (smallest pitch-list) (first range)))
	 ())
	((> (largest pitch-list) (second range))
	 (transpose-to-range (mapcar (lambda (x) (- x 12)) pitch-list) range))
	((< (smallest pitch-list) (first range))
	 (transpose-to-range (mapcar (lambda (x) (+ x 12)) pitch-list) range))
	(t pitch-list))
)
|#