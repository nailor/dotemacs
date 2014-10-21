;;; ===== JavaScript ===== ;;;

(require 'js2-mode)

(setq js2-bounce-indent-p nil)
(setq js2-allow-keywords-as-property-name t)
(setq js2-missing-semi-one-line-override t)
(setq js2-include-node-externs t)
(setq-default js2-basic-offset 4)
(setq js2-global-externs '("jQuery"
                           "$"
                           "_"
                           "Backbone"
                           "define"
                           "require"
                           "location"
                           "describe"
                           "it"
                           "before"
                           "after"
                           "beforeEach"
                           "afterEach"))

;; Enable better editing of camelCased variables etc.
(add-hook 'js2-mode-hook 'subword-mode)

;; Set a shorter modeline.
(rename-modeline "js2-mode" js2-mode "JS2")
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
