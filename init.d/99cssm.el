(autoload 'css-mode "css-mode")
(setq auto-mode-alist       
     (cons '("\\.css\\'" . css-mode) auto-mode-alist))

;; C-style indentations
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-newline-before-closing-bracket t)
