;; Link this file to ~/.emacs

(setq default-directory "~/")

(dolist (file (directory-files "~/.emacs-config/init.d" t ".elc?$"))
  (load (file-name-sans-extension file)))

(when (file-exists-p "~/.emacs-site.el")
  (load "~/.emacs-site.el"))

;; Clear echo area
(princ "" t)
