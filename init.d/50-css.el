; Sane indentation mode
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-newline-before-closing-bracket t)

; Don't auto-insert closing braces
(setq cssm-mirror-mode nil)
(add-hook 'css-mode-hook
	  (lambda ()
            (define-key css-mode-map (kbd "RET") 'newline-and-indent)))
