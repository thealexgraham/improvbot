#| CALL AND RESPONSE ANALYSIS
==========================================================================
Create and analyze call and response

Copyright (c) 2011 Alex Graham
==========================================================================|#


(defvar ~car-status~ 'random)
(setf ~car-status~ 'inverse)

(defun car.create-response (call)
  "This function takes the call and is responsible for creating an adequate response.
It should return a list of notes"

  ;;literal response

  ;;check if a completely literal response will fit in instrument range
  ;(format t "~%2notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) (mapcar 'noteval call)))

  (let* ((response (case 3;(random 5)
		     (0 (create-literal call))
		     (1 (create-inverse call))
		     (2 (create-full-phrase call))
		     (3 (create-rhythm-phrase call))
		     (4 (create-pitch-phrase call))
		     (5 (create-call-phrase call)))))
    (fix-response-range response))
)

(defun get-car-key (n)
  "This function returns a number 0-n which is then fed to the case. this
can be generated different ways depending on what mode is set"
  (case ~car-status~
    ('random (random n))
    ('inverse 2)
    ('full-phrase 1)))

(defun fix-response-range (response)
  "this takes the given response and returns the response in a transposition that fits in the
instrument's range"
  (if (< (find-segment-range response) *range-size*)
					;get a list of possible transpositions that will fit in the range
      (let* ((possible (possible-octive-trans (mapcar 'pitch response) *instrument-range*))
	     (send-to
	      (if possible
		  (set-pitches-in-notes (nth (random (length possible)) possible) response)
		  response)))
	    ;(format t "~%3notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) (mapcar 'noteval call)))
	send-to)))

(defun create-literal (call)
  "returns the call exactly"
  (if (< (find-segment-range call) *range-size*)
					;get a list of possible transpositions that will fit in the range
      (let* ((possible (possible-octive-trans (mapcar 'pitch call) *instrument-range*))
	     (send-to
	      (if possible
		  (set-pitches-in-notes (nth (random (length possible)) possible) call)
		  call)))
	    ;(format t "~%3notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) (mapcar 'noteval call)))
	send-to)))

(defun create-inverse (call)
  "creates a simple inverse from the call"
  (let* ((pitch-list (list-from-notes 'pitch call))
	 (int-list (pitches-to-intervals pitch-list))
	 (inverted-ints (invert-int-list int-list))
	 (new-pitch-list (intervals-to-pitches inverted-ints (first pitch-list))))
    (set-pitches-in-notes new-pitch-list call)))

(defun create-full-phrase (call)
  "This takes the call and uses its information to generate a phrase (and populate fuzzy info)
which is then sent to the fuzzy generator to make a response"
  (let* ((pitch-list (list-from-notes 'pitch call))
	 (velocity-list (list-from-notes 'velocity call))
	 (call-length (get-beat-length call))
	 (the-response ())
	 (the-phrase (make-instance 'phrase :length call-length :start-pitch (pitch (first call)) :currently-playing 1)))
    (setf (shape-map the-phrase) (get-shape-map pitch-list 5))
    (setf (shape-range the-phrase) (- (largest pitch-list) (smallest pitch-list)))
    (format t "shape map: ~a range: ~a" (mapcar 'round (shape-map the-phrase)) (shape-range the-phrase))
    (setf (velocity-map the-phrase) (get-shape-map velocity-list 10))
    (setf (velocity-range the-phrase) (- (largest velocity-list) (smallest velocity-list)))
    (setf (velocity-start the-phrase) (first velocity-list))
    (setf the-response (fuzzy.generate-from-phrase the-phrase))
    (format t "~a" the-response)
    the-response))

(defun create-call-phrase (call)
  "This takes the call and uses its information to generate a phrase (and populate fuzzy info)
which is then sent to the fuzzy generator to make a response"
  (let* ((pitch-list (list-from-notes 'pitch call))
	 (velocity-list (list-from-notes 'velocity call))
	 (call-length (get-real-length call))
	 (the-response ())
	 (the-phrase (make-instance 'phrase :length call-length :start-pitch (pitch (first call)) :currently-playing 1)))
    (setf (shape-map the-phrase) (shape-map-from-call 7 call))
    (setf (shape-range the-phrase) (- (largest pitch-list) (smallest pitch-list)))
    (format t "shape map: ~a range: ~a" (mapcar 'round (shape-map the-phrase)) (shape-range the-phrase))
    (setf (velocity-map the-phrase) (get-shape-map velocity-list 10))
    (setf (velocity-range the-phrase) (- (largest velocity-list) (smallest velocity-list)))
    (setf (velocity-start the-phrase) (first velocity-list))
    (setf @the-phrase the-phrase)
    (setf the-response (fuzzy.generate-from-phrase the-phrase))
    (format t "~a" the-response)
    the-response))

(defun create-rhythm-phrase (call)
  "This takes the call and uses its information to generate a phrase (and populate fuzzy info)
which is then sent to the fuzzy generator to make a response"
  (let* ((pitch-list (list-from-notes 'pitch call))
	 (velocity-list (list-from-notes 'velocity call))
	 (call-length (get-beat-length call))
	 (the-response ())
	 (the-phrase (make-instance 'phrase :length call-length :start-pitch (pitch (first call)) :currently-playing 1)))
    (setf (shape-map the-phrase) (get-shape-map pitch-list 5))
    (setf (shape-range the-phrase) (- (largest pitch-list) (smallest pitch-list)))
    (format t "shape map: ~a range: ~a" (mapcar 'round (shape-map the-phrase)) (shape-range the-phrase))
    (setf (noteval-chain the-phrase) (list-from-notes 'noteval call))
    (setf (velocity-map the-phrase) (get-shape-map velocity-list 10))
    (setf (velocity-range the-phrase) (- (largest velocity-list) (smallest velocity-list)))
    (setf (velocity-start the-phrase) (first velocity-list))
    (setf the-response (fuzzy.generate-from-phrase the-phrase))
    (format t "~a" the-response)
    the-response))

(defun create-pitch-phrase (call)
  "This takes the call and uses its information to generate a phrase (and populate fuzzy info)
which is then sent to the fuzzy generator to make a response"
  (let* ((pitch-list (list-from-notes 'pitch call))
	 (velocity-list (list-from-notes 'velocity call))
	 (call-length (get-beat-length call))
	 (the-response ())
	 (the-phrase (make-instance 'phrase :length call-length :start-pitch (pitch (first call)) :currently-playing 1)))
    (setf (shape-map the-phrase) (get-shape-map pitch-list 5))
    (setf (shape-range the-phrase) (- (largest pitch-list) (smallest pitch-list)))
    (format t "shape map: ~a range: ~a" (mapcar 'round (shape-map the-phrase)) (shape-range the-phrase))
    (setf (velocity-map the-phrase) (get-shape-map velocity-list 10))
    (setf (velocity-range the-phrase) (- (largest velocity-list) (smallest velocity-list)))
    (setf (velocity-start the-phrase) (first velocity-list))
    (setf the-response (fuzzy.generate-from-phrase the-phrase))
    (setf the-response (set-pitches-in-notes pitch-list the-response))
    the-response))

(defun get-shape-map (pitch-list n)
  "Creates a phrase map from a list of pitches with n values"
  (if (= n 0) ()
      (cons (scale-with-negative 10 
				 (fz-membership pitch-list (/ (length pitch-list) n))
				 (smallest pitch-list) (largest pitch-list))
	    (get-shape-map pitch-list (1- n))))
)


(defun get-beat-length (call &optional (sum 0))
  "Get's the length from the call using the notebals  insteadl of just hte lemngth"
  (if (null call) sum
      (get-beat-length (rest call) (+ sum (noteval (first call))))))

(defun get-real-length (call &optional (sum 0))
  "Get's the length from the call using the notebals  insteadl of just hte lemngth"
  (if (= (length call) 1) sum
      (get-beat-length (rest call) (+ sum (noteval (first call))))))

;shape-map
;shape-range
;velocity-map range start


(defun invert-pitch-list (pitch-list)
  "Takes a pitch list and returns the pitches inverted"
  (intervals-to-pitches (invert-int-list (pitches-to-invervals pitch-list)) (first pitch-list)))

(defun invert-int-list (int-list)
  "takes a list of integers and inverts them (currently by just multiplying by -1"
  (if (null int-list) ()
      (cons (* -1 (first int-list)) ;(if (< (first int-list) 0) (+ 12 (first int-list)) (- (first int-list) 12))
	    (invert-int-list (rest int-list)))))

(defun pitches-to-intervals (pitch-list)
  "takes a list of pitches and erturns a list of intervals"
  (if (< (length pitch-list) 2) ()
      (cons (- (second pitch-list) (first pitch-list)) (pitches-to-intervals (rest pitch-list)))))

(defun intervals-to-pitches (int-list start-pitch &optional (fixed-int-list (cons 0 int-list)))
  "makes a pitch list from an interval list duih"
  (if (null fixed-int-list) ()
      (cons (+ (first fixed-int-list) start-pitch)
	    (intervals-to-pitches int-list (+ (first fixed-int-list) start-pitch) (rest fixed-int-list)))))


(defun find-segment-range (note-list)
  "This function takes a segment and returns the range of it"
  (let ((pitches (mapcar 'pitch note-list)))
    (- (largest pitches) (smallest pitches)))
)

(defun possible-octive-trans (pitch-list range &optional start)
  "This function iterates through a range with a pitch-list returning a list of
transpositions that fit within the range"

  (let ((top (largest pitch-list))
	(bottom (smallest pitch-list))
	(range-high (second range))
	(range-low (first range)))

  ;if this is the first time running this function, transpose everything so that it is the lowest octave
  ;under the thing.
    (if (null start) (possible-octive-trans (mapcar (lambda (x) (- x (find-lowest-point (first range)
											(smallest pitch-list))))
						    pitch-list) range t)
	(cond ((> top range-high) ())
	      ((< bottom range-low) (possible-octive-trans (mapcar (lambda (x) (+ 12 x)) pitch-list) range t))
	      (t (cons pitch-list (possible-octive-trans (mapcar (lambda (x) (+ 12 x)) pitch-list) range t))))))
)



(defun find-lowest-point (range-low pitch)
  "finds the amount to subtract so that the lowest pitch is or is under
 the low range by intervals of 12"
  (* (ceiling (- pitch range-low) 12) 12))

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

(defun set-pitches-in-notes (pitch-list note-list)
  (mapcar (lambda (pitch note) (setf (slot-value note 'pitch) pitch) note) pitch-list note-list))

;(make-instance 'note :pitch pitch :velocity (velocity note)



(defun list-from-notes (what note-list)
  (mapcar what note-list))
