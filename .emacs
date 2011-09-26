(require 'cl) ; a rare necessary use of REQUIRE
(setq load-path (cons "/usr/share/emacs/site-lisp/" load-path))
(setq load-path (cons "~/.emacs-lib" load-path))
(setq tab-width 4)
;; (load "color-theme.el")
;; (load "python-mode/python-mode.el")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(case-fold-search t)
 '(color-theme-legal-frame-parameters "\\(color\\|mode\\|font\\|height\\|width\\)$")
 '(css-indent-offset 4)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(find-grep-options "-q")
 '(flymake-allowed-file-name-masks (quote (("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init) ("\\.cs\\'" flymake-simple-make-init) ("\\.p[ml]\\'" flymake-perl-init) ("\\.php[345]?\\'" flymake-php-init) ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup) ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup) ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup) ("\\.tex\\'" flymake-simple-tex-init) ("\\.idl\\'" flymake-simple-make-init))))
 '(global-font-lock-mode t nil (font-lock))
 '(grep-command "grep -n -r ")
 '(gud-gdb-command-name "gdb --annotate=1")
 '(indent-tabs-mode nil)
 '(js2-basic-offset 4)
 '(js2-mirror-mode nil)
 '(large-file-warning-threshold nil)
 '(python-indent-offset 4)
 '(rst-mode-lazy nil)
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(server-mode nil)
 '(show-paren-mode t nil (paren))
 '(show-trailing-whitespace t)
 '(smerge-command-prefix "+")
 '(transient-mark-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(visible-bell t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "apple" :family "Monaco"))))
 '(cursor ((t (:background "#eeeeee"))))
 '(flymake-errline ((t (:background "firebrick"))))
 '(git-header-face ((t (:foreground "lightblue"))))
 '(git-status-face ((t (:foreground "purple")))))
(require 'git)
(setq display-time-day-and-date t)
;; (color-theme-bharadwaj)
(column-number-mode t)
(display-time)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key "\M-g" 'goto-line)
(global-set-key [C-tab] 'other-window)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(toggle-scroll-bar -1)
(menu-bar-mode -1)

(mapcar
 (lambda (file) (load file))
 (directory-files "~/.emacs-lib/init.d" t "^.*\\.el$"))

