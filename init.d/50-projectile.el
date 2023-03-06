(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  (setq projectile-project-search-path '("~/src/" "~/work/" ("~/github" . 1)))
  (setq projectile-completion-system 'ivy)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))

