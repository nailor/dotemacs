(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-confirm-unique-completion nil)
(setq ido-create-new-buffer 'always)
(setq ido-use-filename-at-point nil)

;; This tab override shouldn't be necessary given ido's default
;; configuration, but minibuffer-complete otherwise dominates the
;; tab binding because of my custom tab-completion-everywhere
;; configuration.
(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map [tab] 'ido-complete)))
