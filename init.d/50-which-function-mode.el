(which-function-mode 1)

(setq which-func-unknown "n/a")

;; (setq mode-line-misc-info
;;             ;; We remove Which Function Mode from the mode line,
;;             ;; because it's mostly invisible here anyway.
;;             (assq-delete-all 'which-func-mode mode-line-misc-info))

;; Display which function only on modes that support it
;; (add-hook 'after-change-major-mode-hook
;;           #'(lambda()
;;               (if (member major-mode which-func-modes)
;;                   (setq header-line-format
;;                         '((which-func-mode ("" which-func-format " "))))
;;                 (setq header-line-format nil))))
