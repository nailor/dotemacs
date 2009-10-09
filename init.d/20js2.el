(autoload 'js2-mode "js2" nil t)
(setq auto-mode-alist
      (cons '("\\.\\(js\\|json\\)\\'" . js2-mode)
            auto-mode-alist))
(setq js2-bounce-indent-p nil)
(setq js2-indent-on-enter-key nil)
(setq js2-enter-indents-newline nil)

(add-hook 'js2-mode-hook #'(lambda () (define-key js2-mode-map [(return)] 'newline-and-indent)))
