#|CONTROL MASTER
==========================================================================
Functions for initialization, starting and stopping the improvisation, etc

Copyright (c) 2011 Alex Graham
==========================================================================|#

(defvar response ())
(defvar ~improv-mode~ "analysis")
(defvar ~player-status~ "idle")

(defvar play-history ()) ;my own private list 

(defvar *noteval-session-list* ())
(defvar *call-session-list* ())
(defvar call-list ())


;;initialization
;;-------------------------
(defun max.initialize ()
  (setf call-literal (make-hash-table))
  (setf user-status 'idle)

  (setf response ())
  (setf output.next-note ())
  (setf output.note-queue())
  
  (lisper-send 'reset-borax 1)
  (lisper-send 'tempo-metro 0)
  (lisper-send 'start-gate 1)
  (lisper-send 'init-start 1)
  (setf *recent-pitches* '(60))
  
  (lisper-send 'get-tempo *noteval-default*)

;  (setf ~improv-mode~ "car") ;set the mode
  (max.tap-tempo 800) ;reset notevals
  
  (control.null-vars) ;null other vars
  
  (setf ~status~ "initialize")

)

(defun control.null-vars ()
  "sets all variables to nil"
  (setf call-literal (make-hash-table))
  (setf user-status 'idle)

  (setf response ())
  (setf output.next-note ())
  (setf output.note-queue())

  (setf *current-pcs* ())

  (setf !tempo-count 0)
  
  (format t "reseting information...~%")
)

(defun initialize ()
  (setf *initialize* t)
  (setf *playing* nil)
  (setf *ready* nil))

(defun max.select-mode (mode-id)
  "function which allows user to select improv bot's mode"
  (lisper-send 'delta-collect 0)
  (lisper-send 'pitch-collect 0)
  (lisper-send 'melody-collect 0)
  (case mode-id (0 (initialize-analysis))
	(1 (initialize-car))
	(2 (initialize-accompanied))
	(3 (initialize-solo))))

(defun initialize-analysis ()
  (setf ~improv-mode~ "analysis")
  (lisper-send 'delta-collect 1)
  (lisper-send 'pitch-collect 1)
  (initialize-shared)
)

(defun initialize-car ()
  (setf ~improv-mode~ "car")
  (lisper-send 'melody-collect 1)
  (initialize-shared)
)

(defun initialize-accompanied ()
  (setf ~improv-mode~ "accompanied")
  (lisper-send 'delta-collect 1) ;turn on delta collection
  (lisper-send 'pitch-collect 1)
  (setf !tempo-count 0)

  (initialize-shared)
)

(defun initialize-solo ()
  (setf ~improv-mode~ "solo")
  (initialize-shared)

)

(defun initialize-shared ()
  (format t "~%~%-~a mode- initialized." ~improv-mode~)
  (setf *current-pcs* ())

)

;;start and stop (USER)
;;-------------------------

(defun max.player-start ()
  "called fom max when the player has started playing after stopping, records"
  
  ;;could also if the whole function on playing var
  ;;close start gate so we don't redo this function
  (lisper-send 'start-gate 0)
  (lisper-send 'tempo-metro 1)

  ;;set playing var
  (setf user-status 'idle)

  ;;set status to listening
  (setf ~status~ "listening")
  (setf ~player-status~ "playing")

  ;;call and response
  (setf response (make-hash-table)) ;reset the response
  0
)
  
(defun max.player-stop ()
  "called from max when the player has stopped playing notes"

  ;(format t "the hashtable ~a" (list (maphash #'spit-hash call-literal)))
  (lisper-send 'start-gate 1) ;open start-gate so user can later resume
  (lisper-send 'reset-borax 1)
  (setf user-status 'idle) ;reset user var

  (setf !tempo-count 0)

  ;(format t "~%1notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) 
;				      (mapcar 'noteval (hash-to-list> call-literal))))
  
  
  ;(format t "~%1notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) (mapcar 'noteval call-literal)))
  
  ;call and response
  ;(stop-record)

  (setf ~status~ "waiting")
  (format t "~%~%player has stopped playing~%")
  (setf ~player-status~ "idle")

  (cond ((equal ~improv-mode~ "analysis")
	 (format t "~%~%player has stopped playing~%"))
	((equal ~improv-mode~ "car")
	 (setf call-list (hash-to-list> call-literal))
	 (setf call-literal (make-hash-table)) ;reset the hash table so we can use it again

	 (setf (delta (flast call-list)) (duration (flast call-list)))
	 (setf (noteval (flast call-list)) (get-noteval (delta (flast call-list))))
	 
	 (save-analysis-lists) ;saves various lists
	 (start-response)))
)


(defun save-analysis-lists ()
  "adds collected lists to the session list"
  (setf *noteval-session-list* (cons (reverse !noteval-list) *noteval-session-list*))
  (setf *call-session-list* (cons call-literal *call-session-list*))
  (setf *noteval-pattern-table* (add-pattern-list-to-table (create-pattern-list 2 !noteval-list) 
							   *noteval-pattern-table*))
  (setf !noteval-list ())
)

;;start and stop (US)
;;-------------------------

(defun max.start-playing ()
  (unless (null output.note-queue)

    (setf ~status~ "playing")

    (format t "~%--|started playing at speed: ~a~%" *noteval-default*)
    (setf play-history (cons output.note-queue play-history))
    (lisper-send 'end-toggle 1)
    (lisper-send 'start-bang 0))
)

(defun stop-playing ()
  
  (lisper-send 'end-toggle 0)
  (lisper-send 'reset-borax 0)
  (unless (equal ~status~ "waiting") (setf ~status~ "listening"))
  (format t "~%~%")
  (if (and (not (null !current-phrase)) (not (currently-playing !current-phrase)))
      (setf !current-phrase ()))
  nil)


;;call and response
;;-------------------------
(defun start-response ()
  "this function readys and starts to send a response"

  ;;generate and ready response
  ;(format t "~%1notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) (mapcar 'noteval (hash-to-list> call-literal))))
  (setf response (car.create-response call-list))
  ;(format t "~%4notevals: ~a" (mapcar (lambda (x) (second (assoc x *noteval-read*))) (mapcar 'noteval response)))

  (output.get-literal response)

  (lisper-send 'response-timer 200) ;delay starting us back up
)


;;file input/output
;;-------------------------

(defun write-list (xlist filename)
  "writes a list to a file, each line is an entry in the list"
  (with-open-file (outfile filename :direction :output :if-exists :append) 
    (mapcar (lambda (x) (print x outfile)) xlist)))

(defun read-file (filename)
  "reads each line as an entry in a list"
  (with-open-file (infile filename)
   (do ((result nil (cons next result))
	(next (read infile nil 'eof) (read infile nil 'eof)))
       ((equal next 'eof) (reverse result)))))
