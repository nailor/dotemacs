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
                        diminish
                        exec-path-from-shell
                        fill-column-indicator
                        flx-ido
                        flycheck
                        gist
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
                        magit
                        markdown-mode
                        projectile
                        puppet-mode
                        smex
                        use-package
                        yaml-mode
                        yasnippet
                        ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant
