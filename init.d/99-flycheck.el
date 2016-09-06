(use-package flycheck
  :ensure t
  :init
  (setq flycheck-highlighting-mode 'lines)
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (global-flycheck-mode t)
  :config
  ;; Disable JSHint checker in favor of ESLint.
  (setq-default flycheck-disabled-checkers '(javascript-jshint))
  (setq flycheck-display-errors-delay 0.1)
  (setq flycheck-python-flake8-executable
        (concat (expand-file-name virtualenv-dir) "bin/flake8" )))
