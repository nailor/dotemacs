(require 'ido)
(require 'smex)

(setq ido-create-new-buffer 'always)
(setq ido-default-buffer-method 'selected-window)
(setq ido-use-filename-at-point nil)
(ido-mode t)
(ido-everywhere t)

(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(setq ido-show-dot-for-dired nil)
(setq ido-auto-merge-delay-time 0.7)

(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is the old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(autoload 'idomenu "idomenu" nil t)
(global-set-key (kbd "M-i") 'idomenu)

;; Add recent files menu
(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file
         (ido-completing-read
          "Recent file: "
          (mapcar 'abbreviate-file-name recentf-list) nil t)))
    (when file
      (find-file file))))

(global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)
