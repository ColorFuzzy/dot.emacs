;; save custom-set-variables to this file
(setq custom-file (expand-file-name "custom_file.el" user-emacs-directory))
(if (file-exists-p custom-file)
    (load custom-file)
  (with-temp-buffer (write-file custom-file)))

;; stop creating backup~ files
(setq make-backup-files nil)
;; stop creating #autosave# files
(setq auto-save-default nil)

;; mouse support
(xterm-mouse-mode t)
(unless window-system
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line))

(provide 'init-builtins)
