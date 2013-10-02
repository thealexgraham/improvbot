#|INPUT
==========================================================================
Functions called by Max to input note information that is played by the user
and send them to analysis

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defvar call-literal (make-hash-table)) ;;hash table of the literal response
(defvar call-pitch-list ())
(defvar call-interval-list ())
(defvar call-velocity-list ())

(defvar *available-rhythms* ())

(defvar user-status 'idle)

(defvar !noteval-list ()) ;temp var to gather noteval list to add to file/master


;;max borat inputs
;;-------------------------

(defun max.input-note (borax-note)
  "inputs from max a borax note which is (id pitch vel) and sends it to the master controller"

  ;;enters the velocity and pitch if velocity is not 0 into the literal call
  (cond ((/= (3rd borax-note) 0)
	     (setf (gethash (1st borax-note) call-literal) 
		   (make-instance 'note :pitch (second borax-note) :velocity (third borax-note)))))

  ;;records the pitch into a pitch list
  (setf call-pitch-list (cons call-pitch-list (2nd borax-note)))
)

(defun max.input-duration (borax-duration)
  "inputs from max the duration and id of a boxax (id duration) sends it to master controller"

  ;adds the duration of the note to the hash key
  (setf (duration (gethash (1st borax-duration) call-literal)) (second borax-duration))
  
  ;in case we don't get a delta, set the duration as this note's delta
  ;(setf (delta (gethash (1st borax-duration) call-literal)) (second borax-duration))
  ;(setf (noteval (gethash (1st borax-duration) call-literal)) (get-noteval (2nd borax-duration)))

  ;(format t "current note ~a" (first (gethash (1st borax-duration) call-literal)))
)

(defun max.input-delta (borax-delta)
  "inputs from max a delta (id delta) and sends it to the master controller"
  ;add delta and evaluated noteval to note of call-literal
  ;(unless (< (2nd borax-delta) 150) (analyze-noteval (2nd borax-delta)))
  
   (setf (delta (gethash (1st borax-delta) call-literal)) (second borax-delta))
   (setf (noteval (gethash (1st borax-delta) call-literal)) (get-noteval (2nd borax-delta)))
   
   (setf !noteval-list (cons (get-noteval (2nd borax-delta)) !noteval-list))					    
   (analyze-noteval (2nd borax-delta))
      
)

(defun max.collect-deltas (delta)
  "this function collects deltas coming in from a borax and is used simply to
quickly update the rhythm tables in real time for accompanied/duo mode"
  (analyze-noteval delta)
  ;(setf *available-rhythms* (sort (add-rhythm delta *available-rhythms*) #'<)) ;add delta to list of averaged deltas
  ;(setf *ratio-table* (add-to-rhythm-table delta *ratio-table*)) ;update the rhythm table with new delta
  nil)
  
(defun max.add-vel (velocity)
  (setf *current-velocity* (+ (* .5 (- *current-velocity* velocity)) *current-velocity*))
  (format t "~%~%velocity-~a" *current-velocity*))
  

(defvar *current-velocity* 100)

;(format t "~a ~%" (mapcar (lambda (x) (second (assoc (noteval x) *noteval-read*))) (hash-to-list> call-literal)))
;(defvar !amazing-list ())
;(defvar !amazing-list2 ())