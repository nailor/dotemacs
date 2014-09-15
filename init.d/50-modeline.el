(defvar niftier-projectile-mode-line
  '(:propertize
    (:eval (when (ignore-errors (projectile-project-root))
             (concat " " (projectile-project-name))))
    face font-lock-constant-face)
  "Mode line format for Projectile.")
(put 'niftier-projectile-mode-line 'risky-local-variable t)

(setq-default mode-line-format
              '("%e" mode-line-front-space
                ;; Standard info about the current buffer
                mode-line-mule-info
                mode-line-client
                mode-line-modified
                mode-line-remote
                mode-line-frame-identification
                mode-line-buffer-identification " " mode-line-position
                ;; Some specific information about the current buffer:
                (smartparens-strict-mode (:propertize " ()" face bold))
                (projectile-mode niftier-projectile-mode-line)
                (flycheck-mode flycheck-mode-line) ; Flycheck status
                ;; Misc information, notably battery state and function name
                " "
                mode-line-misc-info
                ;; And the modes, which we don't really care for anyway
                " " mode-line-modes mode-line-end-spaces)
              mode-line-remote
              '(:eval
                (when-let (host (file-remote-p default-directory 'host))
                  (propertize (concat "@" host) 'face
                              '(italic warning)))))
