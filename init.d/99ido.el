(require 'ido)
(setq ido-create-new-buffer 'always)
(setq ido-confirm-unique-completion t)
(setq ido-default-buffer-method 'samewindow)
(setq ido-use-filename-at-point nil)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(set-face-background 'ido-first-match "black")
(set-face-foreground 'ido-subdir "dodger blue")
(setq ido-show-dot-for-dired nil)
(icomplete-mode 1)


;; This tab override shouldn't be necessary given ido's default
;; configuration, but minibuffer-complete otherwise dominates the
;; tab binding because of my custom tab-completion-everywhere
;; configuration.
;; (add-hook 'ido-setup-hook
;;           (lambda ()
;;             (define-key ido-completion-map [tab] 'ido-complete)))

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'find-file-in-project)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)

