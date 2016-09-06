;;; helm --- setting up helm
;;; Commentary:
;;; Code:
(defconst my-gen-dir (file-name-as-directory (concat user-emacs-directory "gen")))

(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window)
  :init (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(use-package smart-mode-line
  :ensure t
  :if window-system
  :init (sml/setup))

(use-package ace-jump-mode
  :disabled t
  :ensure t
  :bind ("C-c <SPC>" . ace-jump-mode))

(use-package multiple-cursors
  :ensure t
  :bind ("C-c m c" . mc/edit-lines)
  :init (setq mc/list-file (concat my-gen-dir "mc-lists.el")))

(use-package volatile-highlights
  :ensure t
  :diminish volatile-highlights-mode
  :config (volatile-highlights-mode t))

(use-package company
  :ensure t
  :diminish company-mode
  :init
  (setq company-dabbrev-ignore-case t
        company-dabbrev-downcase nil)
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (use-package company-tern
    :ensure t
    :init (add-to-list 'company-backends 'company-tern)))

(use-package ag
  :ensure t)

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package misc
  :bind ("M-z" . zap-up-to-char))

(use-package ibuffer
  :bind ("C-x C-b" . ibuffer))

(use-package avy
  :ensure t
  :bind ("C-." . avy-goto-word-1)
  :config (setq avy-all-windows nil))

(use-package helm
  :ensure t
  :diminish helm-mode
  :bind (("C-c i" . helm-imenu)
         ("M-y" . helm-show-kill-ring)
         ("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files))
  :init
  (require 'helm-config)
  (helm-mode 1)

  ;; https://www.reddit.com/r/emacs/comments/345vtl/make_helm_window_at_the_bottom_without_using_any/
  (add-to-list 'display-buffer-alist
               `(,(rx bos "*helm" (* not-newline) "*" eos)
                 (display-buffer-in-side-window)
                 (inhibit-same-window . t)
                 (window-height . 0.4)))

  (use-package helm-ag
    :ensure t
    :bind ("C-c h a" . helm-ag)))

(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (setq projectile-completion-system 'helm)
  (setq projectile-switch-project-action 'helm-projectile)
  (use-package helm-projectile
    :ensure t
    :bind ("C-c p s a" . helm-projectile-ag)))

(use-package solarized-theme
  :ensure t
  :if window-system
  :init
  (setq solarized-distinct-fringe-background t)
  :config
  (load-theme 'solarized-dark t))
  ;; (set-face-attribute 'region nil
  ;;                     :background "#fdf6e3"
  ;;                     :foreground "#d33682"))

(use-package yasnippet
  :disabled t
  :ensure t
  :diminish yas-minor-mode
  :config
  (yas-global-mode 1))

(use-package smartparens
  :disabled t
  :ensure t
  :diminish smartparens-mode
  :config
  (require 'smartparens-config)
  (smartparens-global-mode 1))

(provide '10-helm)
;;; 10-helm.el ends here
