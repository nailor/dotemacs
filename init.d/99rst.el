(require 'rst)
(add-hook 'text-mode-hook 'rst-text-mode-bindings)
(add-hook 'rst-mode-hook 'auto-fill-mode)
(add-hook 'rst-mode-hook 'lineker-mode)
(setq auto-mode-alist
      (cons '("\\.\\(rst\\|rest\\)\\'" . rst-mode)
            auto-mode-alist))
(add-hook 'rst-mode-hook #'(lambda () (local-set-key "\M-s" 'git-status)))
