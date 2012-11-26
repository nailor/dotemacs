(require 'python)
(require 'nose)

(setq nose-global-name "~/.emacs-config/bin/nosemacs-runner")
;; Close the compilation window if there was no error at all.
(setq compilation-exit-message-function
      (lambda (status code msg)
        ;; If M-x compile exists with a 0
        (when (and (eq status 'exit) (zerop code))
          ;; then bury the *compilation* buffer, so that C-x b doesn't
          ;; go there
          (bury-buffer "*nosetests*")
          ;; and return to whatever were looking at before
          (replace-buffer-in-windows "*nosetests*"))
        ;; Always return the anticipated result of
        ;; compilation-exit-message-function
  	(cons msg code)))

(add-hook 'python-mode-hook
  #'(lambda ()
      (define-key python-mode-map "\C-m" 'newline-and-indent)
      (define-key python-mode-map (kbd "C-c C-;") 'python-indent-shift-left)
      (define-key python-mode-map (kbd "C-c C-:") 'python-indent-shift-right)
      (define-key python-mode-map (kbd "C-c C-c") 'comment-region)
      (define-key python-mode-map (kbd "C-c C-u") 'uncomment-region)
      (define-key python-mode-map (kbd "C-c C-n") 'flymake-goto-next-error)
      (define-key python-mode-map (kbd "C-c C-p") 'flymake-goto-prev-error)
      (local-set-key "\C-ca" 'nosetests-all)
      (local-set-key "\C-cm" 'nosetests-module)
      (local-set-key "\C-c." 'nosetests-one)
      (local-set-key "\C-cpa" 'nosetests-pdb-all)
      (local-set-key "\C-cpm" 'nosetests-pdb-module)
      (local-set-key "\C-cp." 'nosetests-pdb-one)
      (which-function-mode)
      (subword-mode)
      ))
