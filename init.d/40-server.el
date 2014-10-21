;; Start server after initialization
(add-hook 'after-init-hook
          #'(lambda ()
              (server-start)
              (advice-add
               'server-switch-buffer :around
               (lambda (f &rest args)
                 (when (car args) (apply f args))))))
