(require 'ido)
(setq ido-confirm-unique-completion t)
(setq ido-default-buffer-method 'samewindow)
(setq ido-use-filename-at-point t)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(set-face-background 'ido-first-match "black")
(set-face-foreground 'ido-subdir "dodger blue")

(icomplete-mode 1)