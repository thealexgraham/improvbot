#|CONTROL LOOP
==========================================================================
Called from Max every 250ms, shows information and is responsible for
beginning new phrases

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defvar *info-timer* 0)
(defvar !tempo-count 0)
(defvar !current-phrase ())


(defvar ~status~ "initialize")

(defun control-loop-tick ()

  (cond ((equal ~status~ "initialize") 
	 (progn
	   (format t "~%~%ImprovBot~%")
	   (format t ">>>>>>>>>>>>>>~%")
	   (format t "initializing...~%")
	   
	   (format t "current mode is: ~a~%~%" ~improv-mode~)
	   (format t "waiting for entrance...~%")
	   (setf ~status~ "waiting"))))
      
#|
	((equal ~status~ "playing")
	 (progn
	   (if (= *info-timer* 25)
	       (progn (format t "~%~%analysis information~%")
		      (format t "----------------------------~%")		      
		      (setf *info-timer* 0))
	       (setf *info-timer* (+ 1 *info-timer*))))))
|#
0
)


(defun max.tempo-tick ()
  "called from the metro's beat that is being updated by max"

  (cond ((and (equal ~status~ "listening") 
	      (equal ~improv-mode~ "accompanied") 
	      (equal ~player-status~ "playing"))
	 (progn
	   (cond ((= !tempo-count 0)
		  (format t "~%~%starting entrance count") (setf !tempo-count 1))
	        ((< !tempo-count 8)
		 (format t " ~a" !tempo-count)
		 (setf !tempo-count (1+ !tempo-count)))
		(t 
		 (control.start-accompanied))))))
)

(defun control.start-accompanied ()
  "called from a tempo tick to begin playing when in accompnanied mode"
  (setf !tempo-count 0)

  (setf ~status~ "playing")
  
  (format t "~%starting to play")
  ;(slime.play-phrase (+ (random 20) 15) 45)
  (setf !current-phrase (make-instance 'phrase :length (+ (random 15) 7) :start-pitch (pick-random *recent-pitches*) :currently-playing 1))
  (setf output.note-queue (fuzzy.play-phrase !current-phrase)) ;start it off
  ;(setf output.note-queue (create-fake-line 50))
  (max.start-playing)

)

(defun pick-random (xlist)
  (nth (random (length xlist)) xlist))


(defun max.playphrase ()
  (slime.play-phrase 15 50))

(defun create-fake-line (howmany)
  (if (= howmany 0) ()
      (cons (make-instance 'note :pitch 50 :velocity 100 :noteval 1) (create-fake-line (1- howmany)))))


(defun enough-rhythms ()
  (if (> (length *available-rhythms*) 2) t nil))
                       

(defmacro if+ (p true false)
  `(if ,p
       (progn ,@true)
     (progn ,@false)))

;; (if+ t 
;;      ((message-box "worked 1") (message-box "worked 2"))
;;      ((message-box "no")))

#|
(if *ready* (progn
		(if (enough-rhythms)
                    (progn
                      (setf *ready* nil)
                      (setf *playing* t)
                      (get-ready)
                      (format t "let's do this.~%")
                      (lisp-send "start" 1)))))   ;This will open the data port and start playing!
|#