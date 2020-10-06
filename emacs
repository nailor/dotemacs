;; link this file to ~/.emacs

;; added by package.el.  this must come before configurations of
;; installed packages.  don't delete this line.  if you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; you may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(flycheck-python-flake8-executable "/users/jyrki/.virtualenvs/emacs/bin/flake8")
 '(package-selected-packages
   (quote
    (magit yasnippet yaml-mode web-mode volatile-highlights vcl-mode use-package solarized-theme smex smartparens smart-mode-line python-mode py-yapf puppet-mode protobuf-mode php-mode persp-projectile multiple-cursors mo-git-blame markdown-mode less-css-mode json-mode js2-mode jedi iedit idomenu highlight-symbol helm-projectile helm-ag handlebars-mode haml-mode groovy-mode grizzl graphviz-dot-mode gitignore-mode git-rebase-mode git-gutter git-commit-training-wheels-mode gist flycheck flx-ido fill-column-indicator f expand-region exec-path-from-shell emacs-eclim easy-kill dockerfile-mode deft debian-changelog-mode crontab-mode company-tern coffee-mode clojure-mode arduino-mode ag ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markup-big-face ((t (:inherit markup-gen-face))))
 '(markup-code-face ((t (:inherit markup-gen-face))))
 '(markup-passthrough-face ((t (:inherit markup-gen-face))))
 '(markup-replacement-face ((t (:foreground "plum1"))))
 '(markup-title-0-face ((t (:inherit markup-gen-face :overline nil :underline t))))
 '(markup-title-1-face ((t (:inherit markup-gen-face :underline (:color foreground-color :style wave)))))
 '(markup-title-2-face ((t (:inherit markup-gen-face :slant italic))))
 '(markup-typewriter-face ((t (:inherit markup-gen-face))))
 '(org-level-1 ((t (:inherit nil :foreground "#cb4b16" :height 1.0))))
 '(org-level-2 ((t (:inherit nil :foreground "#859900" :height 1.0))))
 '(org-level-3 ((t (:inherit nil :foreground "#268bd2" :height 1.0))))
 '(org-level-4 ((t (:inherit nil :foreground "#b58900" :height 1.0)))))

(setq default-directory "~/")

(when (file-exists-p "~/.emacs-site.el")
  (load "~/.emacs-site.el"))

(dolist (file (directory-files "~/.emacs-config/init.d" t ".elc?$"))
  (load (file-name-sans-extension file)))

;; Clear echo area
;; (princ "" t)
