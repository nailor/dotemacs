(require 'python)

(add-hook
 'python-mode-hook
 '(lambda () 
    (define-key python-mode-map "\C-m" 'newline-and-indent)
    (c-toggle-auto-hungry-state 1)
    ))
