(blink-cursor-mode 0)
(setq cursor-in-non-selected-windows nil)

(if window-system
  (progn
    ;; Window system present
    (set-face-attribute 'default nil
                        :font "ProggyCleanTT"
                        :height 120)
    (if (featurep 'ns-win)
      ; check if we're on OSX
      (set-face-attribute 'default nil
                          :height 160)
      (set-face-attribute 'default nil
                          :height 120)
      )))
  
;; Display full filename in the frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))
