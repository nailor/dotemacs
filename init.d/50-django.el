(require 'django-html-mode)

(add-hook 'django-html-mode
          #'(lambda ()
              (local-set-key (kbd "C-c %") 'django-close-tag)
              (local-set-key (kbd "C-<return>") 'sgml-close-tag)))
