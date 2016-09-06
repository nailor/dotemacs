(use-package vcl-mode
  :ensure t
  :mode "\\.vcl\\'"
  :commands (vcl-mode)
  :config
  (defun my-vcl-mode-hook ()
    (highlight-symbol-nav-mode t)
    (highlight-symbol-mode t))

  (add-hook 'vcl-mode-hook 'my-vcl-mode-hook)
  :init
  (add-to-list 'auto-mode-alist '("\\.vcl$" . vcl-mode))
  (add-to-list 'auto-mode-alist '("\\.vcl\\.template$" . vcl-mode)))
