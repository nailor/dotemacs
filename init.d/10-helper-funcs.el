(defun single-window-mode ()
  (interactive)
  (delete-other-windows)
  (set-frame-size (selected-frame) 80 65))

(defun double-window-mode ()
  (interactive)
  (delete-other-windows)
  (set-frame-size (selected-frame) 163 65)
  (split-window (selected-window) 83 t))

;; http://whattheemacsd.com/appearance.el-01.html
(defmacro rename-modeline (package-name mode new-name)
  `(eval-after-load ,package-name
     '(defadvice ,mode (after rename-modeline activate)
        (setq mode-name ,new-name))))
