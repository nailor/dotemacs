(require 'highlight-symbol)

(add-hook 'prog-mode-hook #'highlight-symbol-mode)

;; Navigate occurrences of the symbol under point with M-n and M-p
(add-hook 'prog-mode-hook #'highlight-symbol-nav-mode)

;; Highlight the symbol under point
(setq highlight-symbol-idle-delay 0.4 ; Highlight almost immediately
      highlight-symbol-on-navigation-p t) ; Highlight immediately after
                                          ; navigation


