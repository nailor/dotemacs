;;; helper-funcs -- for shits
;;; Commentary:

(defun single-window-mode ()
  (interactive)
  (delete-other-windows)
  (set-frame-size (selected-frame) 80 65))

(defun double-window-mode ()
  (interactive)
  (delete-other-windows)
  (set-frame-size (selected-frame) 163 65)
  (split-window (selected-window) 83 t))

(provide '10-helper-funcs)
;;; 10-helper-funcs.el ends here
