;;; flycheck

(require 'flycheck)

;; Have flycheck bitch all the lines
(setq flycheck-highlighting-mode 'lines)

;; Use grizzl instead of ido for completion
(setq flycheck-completion-system 'grizzl)


;; Disable elisp checker.
(eval-after-load 'flycheck
  '(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))

(global-flycheck-mode t)

(setq flycheck-python-flake8-executable
      (concat (expand-file-name virtualenv-dir) "bin/flake8" ))

(setq flycheck-display-errors-delay 0.1)

(add-hook 'after-init-hook #'global-flycheck-mode)
