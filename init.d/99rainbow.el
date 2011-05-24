(require 'rainbow-mode)
(mapc
 (lambda (n)
   (add-to-list 'rainbow-html-colors-major-mode-list n))
 '(scss-mode haml-mode))
