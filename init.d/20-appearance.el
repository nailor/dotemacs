(if window-system
  (progn
    ;; Window system present
    (set-face-attribute 'default nil
                        :font "ProggyCleanTT"
                        :height 120
                        :background "black"
                        :foreground "white")
    (if (featurep 'ns-win)
      ; check if we're on OSX
      (set-face-attribute 'default nil
                          :height 160)
      (set-face-attribute 'default nil
                          :height 120)
      )

    (set-face-attribute 'mode-line nil
                        :background "#f8f8f8"
                        :foreground "#212121"
                        :box nil)
    (set-face-attribute 'mode-line-inactive nil
                        :background "gray30"
                        :foreground "gray50"
                        :box nil)
    (set-face-attribute 'cursor nil
                        :background "white"
                        :foreground "black"))
  (progn
    ;; Running in console
    (set-face-attribute 'default nil
                        :background "black"
                        :foreground "white")
    (set-face-attribute 'mode-line nil
                        :background "white"
                        :foreground "black"
                        :inverse-video nil
                        :box nil)))

;; Display full filename in the frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))
