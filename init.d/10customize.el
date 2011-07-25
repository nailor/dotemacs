(setq temporary-file-directory "~/.emacs-backup")
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(global-unset-key (kbd "C-z"))
;; (global-unset-key (kbd "<up>"))
;; (global-unset-key (kbd "<down>"))
;; (global-unset-key (kbd "<next>"))
;; (global-unset-key (kbd "<prior>"))
;; (global-unset-key (kbd "<home>"))
;; (global-unset-key (kbd "<end>"))
(global-unset-key (kbd "C-<home>"))
(global-unset-key (kbd "C-<end>"))
;; (global-unset-key (kbd "<left>"))
;; (global-unset-key (kbd "<right>"))
(global-unset-key (kbd "C-<up>"))
(global-unset-key (kbd "C-<down>"))
(global-unset-key (kbd "C-<left>"))
(global-unset-key (kbd "C-<right>"))
(setq show-trailing-whitespace t)
(global-set-key "\C-cw" 'delete-trailing-whitespace)
(global-set-key (kbd "<f5>") 'kmacro-call-macro)
(global-set-key (kbd "M-;") 'beginning-of-buffer)
(global-set-key (kbd "M-:") 'end-of-buffer)
(global-set-key (kbd "C-M-p") #'(lambda () (interactive) (previous-line 10)))
(global-set-key (kbd "C-M-n") #'(lambda () (interactive) (forward-line 10)))
(global-set-key (kbd "C-c c") 'comment-region)
(mouse-avoidance-mode 'jump)
(setq inhibit-startup-message t)
;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
 (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))

(defun single-window-mode ()
  (interactive)
  (delete-other-windows)
  (set-frame-size (selected-frame) 80 65))

(defun double-window-mode ()
  (interactive)
  (delete-other-windows)
  (set-frame-size (selected-frame) 163 65)
  (split-window (selected-window) 83 t))

(make-directory autosave-dir t)
(if window-system
  ;; Window system present
  (progn
    (set-face-attribute 'default nil
                        :background "black"
                        :foreground "white")
    (set-face-attribute 'mode-line nil
                        :background "gray30"
                        :foreground "gray80"
                        :box nil)
    (set-face-attribute 'mode-line-inactive nil
                        :background "gray30"
                        :foreground "gray50"
                        :box nil)

    ;; Resize the frame to 80x65 characters
    (modify-frame-parameters nil '((width . 80) (height . 65)))

  ;; Running in console
  (progn
    (set-face-attribute 'default nil
                        :background "black"
                        :foreground "white")
    (set-face-attribute 'mode-line nil
                        :background "white"
                        :foreground "black"
                        :inverse-video nil
                        :box nil))))
