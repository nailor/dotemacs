;; jedi auto complete
(require 'jedi)
(autoload 'jedi:setup "jedi" nil t)
(setq jedi:server-command
      (list (concat (expand-file-name virtualenv-dir) "bin/python")
            jedi:server-script))
