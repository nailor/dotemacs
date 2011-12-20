;; Based on "Effective emacs"
;; http://steve.yegge.googlepages.com/effective-emacs

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\M-r" 'isearch-backward-regexp)
(global-set-key "\M-s" 'isearch-forward-regexp)
(global-set-key [f5] 'call-last-kbd-macro)

(global-set-key "\M-n" 'forward-paragraph)
(global-set-key "\M-p" 'backward-paragraph)
(global-set-key "\C-\M-n" #'(lambda () (interactive) (forward-line 12)))
(global-set-key "\C-\M-p" #'(lambda () (interactive) (previous-line 12)))
(global-set-key "\M-g" 'goto-line)

(global-set-key (kbd "M--") 'hippie-expand)

(global-set-key (kbd "C-c c") 'comment-region)
(global-set-key (kbd "C-c u") 'comment-region)

(global-set-key (kbd "C-c w") 'delete-trailing-whitespace)

(global-set-key (kbd "C-<tab>") 'other-window)

(define-key global-map "\C-cr" 'org-remember)

; Unset harmful keys
;(global-unset-key (kbd "<up>"))
;(global-unset-key (kbd "<down>"))
;(global-unset-key (kbd "<left>"))
;(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "C-<up>"))
(global-unset-key (kbd "C-<down>"))
(global-unset-key (kbd "C-<left>"))
(global-unset-key (kbd "C-<right>"))

; Imitate US keyboard layout
(global-set-key (kbd "M-;") 'beginning-of-buffer)
(global-set-key (kbd "M-:") 'end-of-buffer)

(if window-system
  ;; Window system present
  (progn
    ;; Disable suspending with C-z and iconifying with C-x C-z
    (global-unset-key (kbd "C-z"))
    (global-unset-key (kbd "C-x C-z"))))
