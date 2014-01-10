(when (memq window-system '(mac ns))
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  (setq ring-bell-function (lambda ()))
  (setq mac-allow-anti-aliasing nil))  ;; turn off anti-aliasing

