 ;; Navigates of the symbol under point with M-n and M-p
(require 'highlight-symbol)
(add-hook 'prog-mode-hook #'highlight-symbol-nav-mode)
(add-hook 'prog-mode-hook #'highlight-symbol-mode)

(setq highlight-symbol-idle-delay 0.4 ; Highlight almost immediately
      highlight-symbol-on-navigation-p t) ; Highlight immediately after
                                        ; navigation
