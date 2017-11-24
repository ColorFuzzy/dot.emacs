;; setup env(for shell command) & exec-path(for finding programs)
(dolist (bin-path '("/usr/local/bin"))
  (setenv "PATH" (concat (getenv "PATH") ":" bin-path))
  (add-to-list 'exec-path bin-path))

;; save custom-set-variables to this file
(setq custom-file (expand-file-name "custom_file.el" user-emacs-directory))
(if (file-exists-p custom-file)
    (load custom-file)
  (with-temp-buffer (write-file custom-file)))

(setq-default
 ;; stop creating filename~ files
 make-backup-files nil
 ;; stop creating #autosave# files when you exit without save a buffer
 auto-save-default nil
 ;; stop create auto-save-list folder
 auto-save-list-file-prefix nil
 )

;; do not display continuation lines
(setq-default truncate-lines t)

;; mouse support
(xterm-mouse-mode t)
(unless window-system
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line))

(provide 'init-builtins)
