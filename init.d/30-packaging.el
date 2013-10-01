;;; Package

(require 'package)

;; Add package archives.
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))(require 'package)

(defvar my-packages  '(
                        auto-complete
                        coffee-mode
                        deft
                        fill-column-indicator
                        flycheck
                        gist
                        git-commit-mode
                        git-gutter
                        graphviz-dot-mode
                        grizzl
                        haml-mode
                        idomenu
                        iedit
                        jedi
                        js2-mode
                        json-mode
                        markdown-mode
                        puppet-mode
                        smex
                        yasnippet
                        ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
