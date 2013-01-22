;; jedi auto complete
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook
  #'(lambda ()
      (jedi:setup)
      (setq jedi:server-script
            (expand-file-name "~/.emacs-config/lib/jedi-el/jediepcserver.py"))
      (setq jedi:server-command
            (list (concat (expand-file-name virtualenv-dir)
                          "bin/python")
                  jedi:server-script))))

