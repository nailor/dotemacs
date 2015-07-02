;; All libraries
(add-to-list 'load-path "~/.emacs-config/lib/")
(add-to-list 'custom-theme-load-path "~/.emacs-config/themes/")

;; Preferences
(setq inhibit-startup-screen t)
(setq inhibit-startup-message 1)
(setq make-backup-files nil)
(setq confirm-kill-emacs 'y-or-n-p)
(setq tab-width 8)

;; Global modes
(global-font-lock-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(and (functionp 'tool-bar-mode) (tool-bar-mode -1))
(and (functionp 'scroll-bar-mode) (scroll-bar-mode -1))
(menu-bar-mode -1)
(transient-mark-mode -1)
(mouse-avoidance-mode 'jump)

;; Disable abbrev-mode
(setq-default abbrev-mode nil)
(subword-mode)

;; blinky blinky
(blink-cursor-mode t)

;; No yes-or-no, y-or-n instead
(defalias 'yes-or-no-p 'y-or-n-p)

(show-paren-mode t)

;; Don't ask about symlinked version controlled files
(setq vc-follow-symlinks t)

(setq next-line-add-newlines nil)

;; Local PATH
(setq exec-path (append exec-path '("~/.local/bin")))

;; Smarter buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style (quote post-forward))

(electric-pair-mode -1)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; Set arbitrary but high tresholds for splitting. I don't want emacs
;; to decide for me when to split
(setq split-height-threshold 1200)
(setq split-width-threshold 2000)
