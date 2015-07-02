(require 'rst)
(add-to-list 'auto-mode-alist '("\\.rst$" . rst-mode))
(add-hook 'rst-mode-hook 'turn-on-auto-fill)
