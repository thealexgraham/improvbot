#|HARMONIC ANALYSIS
==========================================================================
Defines, creates and maintains phrases

Copyright (c) 2011 Alex Graham
==========================================================================|#



;phrase that is created for a fuzzy system to follow


"shape map is a list of 'heights', -10 - 10, at 3 (+ end) points throughout the phrase
the fuzzy engine can pick intervals based on how close it currently is to the current
place in the phrase"

(defclass phrase ()
;  "a phrase is information that a fuzzy engine follows to generate values,
; gives information for shape (direction/intervals) and velocity"
  ((length :accessor phrase-length :initarg :length)		;length in notes? or in beats?
   (position :accessor phrase-position :initform 0)
   (start-pitch :accessor start-pitch :initarg :start-pitch)
   (last-note :accessor last-note :initform nil)
   (phrase-id :accessor phrase-id :initform (random 10))
   
   (noteval-chain :accessor noteval-chain :initform ())
   (nv.last-chain-id :accessor nv.last-chain-id :initform 1)
   
   (currently-playing :accessor currently-playing :initarg :currently-playing)
   (shape-map :accessor shape-map :initform (random-shape-map))	;(7 3 -2 5)  
   (shape-range :accessor shape-range :initform 30)  ;actual range of notes melody should stay within
   (shape-map-scaledp :accessor shape-map-scaledp :initform nil)
   ;(real-shape-map :accessor real-shape-map)
   
   (velocity-map :accessor velocity-map :initform (random-velocity-map))
   (velocity-range :accessor velocity-range :initform 160)
   (velocity-start :accessor velocity-start :initform 75)
   (velocity-map-scaledp :accessor velocity-map-scaledp :initform nil)) ;similar to shape-map
)

;beats are just 1 - so every note val just adds up to show position on map

(defvar *premade-shape-maps* '((0 2 -2 0) (5 2 -2 0) (1 4 -1 0) (-3 4 0 -1) (-2 4 5 2) (3 5 -4 0) (-5 -3 3 5) (5 0 -5 5)))
(defvar *premade-velocity-maps* '((0 1 2 1) (0 -1 -2 -1) (0 1 2 3)))
(defvar *velocity-map-range* '(-5 5))
(defvar *shape-map-range* '(-5 5))

;;shape-map creation
;;==============================

(defun shape-map-from-call (n call)
  "creates a shape map from the pitches (and rhythms for legnth of the call, n is number of points on map"
  (let* ((pitch-list (list-from-notes 'pitch call))
	 (noteval-list (list-from-notes 'noteval call))
	 (summed-notevals (sum-noteval-list noteval-list))
	 (length (- (apply '+ noteval-list) (flast noteval-list)))
	 (max-pitch (largest pitch-list))
	 (min-pitch (smallest pitch-list))
	 (scaled-pitches (mapcar (lambda (x) (scale-with-negative 10 x min-pitch max-pitch)) pitch-list)) ;scale to -5 to 5
	 (point-map (mapcar (lambda (x y) (list x y)) summed-notevals scaled-pitches)))   ;((1 50) (2.5 40) (4 30)) etc
    (create-shape-map n point-map)))

(defun sum-noteval-list (xlist &optional (current-sum 0))
  "takes a list of notevals and finds the posuition of eacch point, starting at 0"
  (if (null xlist) ()
      (cons current-sum (sum-noteval-list (rest xlist) (+ current-sum (first xlist))))))

(defun find-points-between (x position-list &optional (recurse-list position-list) last-position)
  "returns which two points x is between on the point list, if above or below list, returns nil, if equal returns single number if between, two"
  (cond ((or (> x (flast position-list)) (< x (first position-list))) ;x isn't on this list
	 nil)
	((> x (first recurse-list))
	 (find-points-between x position-list (rest recurse-list) (first recurse-list)))
	((= x (first recurse-list))
	 (first recurse-list))
	((< x (first recurse-list))
	 (list last-position (first recurse-list)))))

(defun create-shape-map (n point-map &optional (segment-length (/ (first (flast point-map)) (- n 1))) (count 0)) ;flast of point-map is length
  "Actual function to create a standardized n point shape map from a poiint map generated from a call"
  (if (<= n 0) ()
      (cons (let ((between (find-points-between count (mapcar (lambda (x) (first x)) point-map))))
	      (if (listp between) (find-membership-between count 
							   (assoc (first between) point-map)
							   (assoc (second between) point-map))
		  (second (assoc between point-map))))
	    (create-shape-map (1- n) point-map segment-length (+ count segment-length)))))


;(defun find-membership-between (x pointa pointb)	 

;(defun negative-scale-list (size xmin xmax
    


;;scaling shape-maps
;;-------------------------


(defun phrase.scale-shape-map (xphrase)
  "creates a scaled shape map from a phrase and stores it in the phrase, this is assuming both a
shape map and a starting pitch exist"
  (setf (shape-map xphrase) (scale-shape-map (shape-map xphrase) (shape-range xphrase)))
  (setf (shape-map xphrase) (mapcar (lambda (x) (+ x (start-pitch xphrase))) (shape-map xphrase)))
  (format t "~%scaled shape: ~a" (shape-map xphrase))
  (setf (shape-map-scaledp xphrase) t)
  ;xphrase ;return xphrase so calling function can set it
)

(defun scale-shape-map (xmap size)
  "caller function for below"
  (scale-shape-map-recurse xmap size (first *shape-map-range*) (second *shape-map-range*)))

(defun scale-shape-map-recurse (xmap size xmap-min xmap-max)
  "scales a shape map to the phrase's range size -size/2 - size/2, this will be added
to the starting pitch to create the actual range boundaries in fuzzy generation"
  (if (null xmap) ()
      (cons (scale-with-negative size (first xmap) xmap-min xmap-max) 
	    (scale-shape-map-recurse (rest xmap) size xmap-min xmap-max))))

(defun scale-with-negative (size x min max)
  "scales a number from a range to a range from -size/2 to size/2"
  (- (* size (/ (- x min) (- max min))) (/ size 2)))

;;scaling positions
;;-------------------------

(defun scale-position-to-map (position phrase-length map-length)
  "scales the current position to the length of the xmap it will be finding membership on"
  (* map-length (/ position phrase-length)))

;;velocity scaling
;;-------------------------

(defun phrase.scale-velocity-map (xphrase)
  "creates a scaled shape map from a phrase and stores it in the phrase, this is assuming both a
shape map and a starting pitch exist"
  (setf (velocity-map xphrase) (scale-velocity-map (velocity-map xphrase) (velocity-range xphrase)))
  (setf (velocity-map xphrase) (mapcar (lambda (x) (+ x (velocity-start xphrase))) (velocity-map xphrase)))
  (setf (velocity-map-scaledp xphrase) t)
  ;xphrase ;return xphrase so calling function can set it
)

(defun get.scale-velocity-map (xphrase)
  "creates a scaled shape map from a phrase and stores it in the phrase, this is assuming both a
shape map and a starting pitch exist"
  
  (mapcar (lambda (x) (+ x (velocity-start xphrase))) 
				       (scale-velocity-map (velocity-map xphrase) (velocity-range xphrase)))
  ;xphrase ;return xphrase so calling function can set it
)

(defun scale-velocity-map (xmap size)
  "caller function for below"
  (scale-velocity-map-recurse xmap size (first *velocity-map-range*) (second *velocity-map-range*)))

(defun scale-velocity-map-recurse (xmap size xmap-min xmap-max)
  "scales a velocity map to the phrase's range size -size/2 - size/2, this will be added
to the starting pitch to create the actual range boundaries in fuzzy generation"
  (if (null xmap) ()
      (cons (scale-with-negative size (first xmap) xmap-min xmap-max) 
	    (scale-velocity-map-recurse (rest xmap) size xmap-min xmap-max))))

;;shape generators
;;-------------------------

(defun random-shape-map ()
  "called when a phrase is created and creates a random shape, currently by
selecting between a few premade ones"

  (nth (random (length *premade-shape-maps*)) *premade-shape-maps*))

(defun random-shape-range ()
  "called when a phrase is created and creates a random range for a shape,
currently by random choice"
  (- (/ *instrument-range* 2) (random 12)))

(defun random-velocity-map ()
  "called when a phrase is created and creates a random shape, currently by
selecting between a few premade ones"

  (nth (random (length *premade-velocity-maps*)) *premade-velocity-maps*))