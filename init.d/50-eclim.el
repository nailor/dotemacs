(require 'eclim)
(setq eclim-executable "/home/jyrki/tmp/eclipse/eclim")
(setq eclim-eclipse-dirs '("~/tmp/eclipse"))
(setq eclim-auto-save t)
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)


(global-eclim-mode)


(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)
