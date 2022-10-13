
"Blue Raven"

(defparameter *smallNum* 1)
(defparameter *bigNum* 100)


(defun GuessMyNumber ()
  "returns the int upper and lower average"
  
  (ash (+ *smallNum* *bigNum* ) -1)) ; cuts the number in half


(defun smaller()
  "lower the upper bond"
  
  (setf *bigNum* (1- (GuessMyNumber)))
  (GuessMyNumber))


(defun bigger ()
  "higher the lower bond"
  
  (setf *smallNum* (1+ (GuessMyNumber)))
  (GuessMyNumber))


(defun startover ()
  "resets the global variables"

  (setf *smallNum* 1)
  (setf *bigNum* 100)
  (guessmynumber))

(defun display ()
  "when guessed, displays the correct number"
  
  (format nil "Your number is:  ~A" *smallNum*)
  (format nil "Your number is:  ~A" *bigNum*))
