(require 'projectile)
(projectile-global-mode)

;; Don't run projectile for tramp stuff
(defadvice projectile-on (around exlude-tramp activate)
    (unless  (--any? (and it (file-remote-p it))
        (list
            (buffer-file-name)
            list-buffers-directory
            default-directory))
    ad-do-it))
