(require 'lineker)
(add-hook 'c-mode-hook 'lineker-mode)
(add-hook 'log-edit-mode-hook 'lineker-mode)
(set 'lineker-check-on-save nil)
