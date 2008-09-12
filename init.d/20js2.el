(autoload 'js2-mode "js2" nil t)
(setq auto-mode-alist
      (cons '("\\.\\(js\\|json\\)\\'" . js2-mode)
            auto-mode-alist))
