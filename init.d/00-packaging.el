;;; Package

(require 'package)

;; Add package archives.
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))(require 'package)

(defvar my-packages  '(
                        auto-complete
                        coffee-mode
                        deft
                        exec-path-from-shell
                        fill-column-indicator
                        flx-ido
                        flycheck
                        gist
                        git-commit-mode
                        git-gutter
                        git-rebase-mode
                        gitignore-mode
                        graphviz-dot-mode
                        grizzl
                        haml-mode
                        highlight-symbol
                        idomenu
                        iedit
                        jedi
                        js2-mode
                        json-mode
                        markdown-mode
                        projectile
                        puppet-mode
                        smex
                        yaml-mode
                        yasnippet
                        ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
