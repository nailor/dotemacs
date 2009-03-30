(require 'django-html-mode)
(setq auto-mode-alist
      (cons '("\\.html\\'" . django-html-mode)
            auto-mode-alist))
(define-key html-mode-map (kbd "C-<return>") 'sgml-close-tag)
