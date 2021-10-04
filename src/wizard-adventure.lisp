(defparameter *nodes* '((living-room (you are in the living-room. a wizard is snoring loudly on the couch.))
			(garden (you are in a beautiful garden. there is a well in front of you.))
			(attic (you are in the attic. there is a giant welding touch in the corner.))))

(defparameter *edges* '((living-room (garden west door)
				     (attic upstairs ladder))
			(garder (living-room east door))
			(attic (living-room downstairs ladder))))


(defun describe-location (location nodes)
  ;; cadr = cdr + car
  (cadr (assoc location nodes)))

(defun describe-path (edge)
  `(there is a ,(caddr edge) going ,(cadr edge) from here.))

(defun describe-paths (location edges)
  (apply #'append (mapcar #'describe-path (cdr (assoc location edges)))))

;; Test exec
(print (describe-location 'living-room *nodes*))
(print (describe-path '(garden west door)))
(print (describe-paths 'living-room *edges*))

