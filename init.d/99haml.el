(require 'haml-mode)
(add-hook 'haml-mode-hook '(lambda ()
                             (and (file-exists-p (buffer-file-name))
                                  (file-exists-p (haml-compiled-file-name))
                                  (haml-cos-mode t))))

(add-hook 'haml-mode-hook
                  '(lambda ()
                         (setq indent-tabs-mode nil)
                         (define-key haml-mode-map "\C-m" 'newline-and-indent)))
