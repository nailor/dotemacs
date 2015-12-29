(use-package puppet-mode
             :ensure t
             :commands (puppet-mode)
             :config
             (unbind-key "$" puppet-mode-map))
