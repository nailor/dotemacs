;; (require 'helm-config)
;; (require 'ido)
;; (require 'smex)
;; (require 'flx-ido)


;; (setq ido-create-new-buffer 'always)
;; (setq ido-default-buffer-method 'selected-window)
;; (setq ido-use-filename-at-point nil)
;; (ido-mode t)
;; (ido-everywhere t)
;; (flx-ido-mode 1)
;; ;; disable ido faces to see flx highlights.
;; (setq ido-use-faces nil)

;; (setq ido-enable-flex-matching t) ; fuzzy matching is a must have
;; (setq ido-show-dot-for-dired nil)
;; (setq ido-auto-merge-delay-time 0.7)

;; ; Vertical ido mode
;; (setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))

;; (defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
;; (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
;; (defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;;   (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;   (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
;; (add-hook 'ido-setup-hook 'ido-define-keys)

;; (smex-initialize)

;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is the old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; (autoload 'idomenu "idomenu" nil t)
;; (global-set-key (kbd "M-i") 'idomenu)

;; ;; Add recent files menu
;; (defun recentf-ido-find-file ()
;;   "Find a recent file using ido."
;;   (interactive)
;;   (let ((file
;;          (ido-completing-read
;;           "Recent file: "
;;           (mapcar 'abbreviate-file-name recentf-list) nil t)))
;;     (when file
;;       (find-file file))))

;; (global-set-key (kbd "C-x C-r") 'recentf-ido-find-file)

