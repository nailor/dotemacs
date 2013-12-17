;; Link this file to ~/.emacs

(setq default-directory "~/")

(when (file-exists-p "~/.emacs-site.el")
  (load "~/.emacs-site.el"))

(dolist (file (directory-files "~/.emacs-config/init.d" t ".elc?$"))
  (load (file-name-sans-extension file)))

;; Clear echo area
(princ "" t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit nil :foreground "#cb4b16" :height 1.0))))
 '(org-level-2 ((t (:inherit nil :foreground "#859900" :height 1.0))))
 '(org-level-3 ((t (:inherit nil :foreground "#268bd2" :height 1.0))))
 '(org-level-4 ((t (:inherit nil :foreground "#b58900" :height 1.0)))))
