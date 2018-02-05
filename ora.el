;; WIP
;; DO NOT USE

(defun ora ()
  "Remove a function definition, putting it into the kill-ring.
If the function has a newline preceeding it, this will select that too."
  (interactive)
  (mark-defun)
  (kill-region 0 0 1))

(defun ora-up ()
  "Move a function definition up"
  (interactive)
  (ora)
  (beginning-of-defun)
  (previous-line) ; account for prev line being selected
  (yank)
  (beginning-of-defun))

; BUG: copies extra stuff.
(defun ora-down ()
  "Move a function definition down"
  (interactive)
  (ora) ; delete old defun
  (end-of-defun)
  (yank) 
  (beginning-of-defun))
