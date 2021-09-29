;; グローバル変数を定義する
(defparameter *small* 1)
(defparameter *big* 100)
(defparameter *input-number* 50)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  ;; 1-は引数の値から1を引く関数
  (setf *big* (1- (guess-my-number))))

(defun bigger ()
  ;; 1+も引数の値から1を足す関数
  (setf *small* (1+ (guess-my-number))))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (defparameter *input-number* (parse-integer (first *args*))))

(defun print-current-status ()
  (format t "*small*: ~A~%" *small*)
  (format t "*big*: ~A~%" *big*)
  (format t "*input-number*: ~A~%" *input-number*)
  (format t "guess-my-number: ~A~%" (guess-my-number)))
  

(defun main ()
  (start-over)
  (print-current-status)

  (cond ((= *input-number* (guess-my-number)) (format t "Your number is ~A" (guess-my-number)))
	((< *input-number* (guess-my-number)) (format t "Your number is less than ~A" (guess-my-number)))
	((> *input-number* (guess-my-number)) (format t "Your number is more than ~A" (guess-my-number)))))

(main)
