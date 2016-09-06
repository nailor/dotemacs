;; (require 'auto-complete)
;; ; Do some fancy calculation of where in hell the ac-dictionaries should be.
;; (let
;;     ((package-name (package-version-join
;;                   (package-desc-version (car(cdr (assq 'auto-complete package-alist)))))))
;;   (add-to-list 'ac-dictionary-directories (concat "~/.emacs.d/elpa/auto-complete-" package-name)))
;; (require 'auto-complete-config)
;; (ac-config-default)
