(when (require 'deft nil 'noerror)
  (setq deft-extension "org")
  (setq deft-directory "~/Dropbox/Notes")
  (setq deft-text-mode 'org-mode)
  (global-set-key [f8] 'deft))

