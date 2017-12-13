;; setup env(for shell command) & exec-path(for finding programs)
(dolist (bin-path '("/usr/local/bin"))
  (setenv "PATH" (concat (getenv "PATH") ":" bin-path))
  (add-to-list 'exec-path bin-path))

;; enable features
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-defun 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; convenient
(setq-default
 ring-bell-function 'ignore
 save-interprogram-paste-before-kill t
 scroll-preserve-screen-position 'always
 blink-cursor-interval 0.4)

;; delete selection
(delete-selection-mode t)

;; treated this_is_a_symbol as one word
(global-superword-mode t)

;; auto revert local changes
(global-auto-revert-mode)
(setq global-auto-revert-non-file-buffers t
      auto-revert-verbose nil)

;; auto insert pairs & show paren matches
(electric-pair-mode t)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 30)
(setq recentf-max-saved-items 100)

;; enter y instead of yes
(defalias 'yes-or-no-p 'y-or-n-p)

;; search ignore case
(setq-default case-fold-search t)

;; insert spaces instead of tab
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; enable semantic
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

;; no dialogs
(setq use-file-dialog nil)
(setq use-dialog-box nil)

;; no startup screen
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)

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
 auto-save-list-file-prefix nil)

;; do not display continuation lines
(setq-default truncate-lines t)

;; mouse support
(xterm-mouse-mode t)
(unless window-system
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line))

;; mouse scrolling
(setq mouse-wheel-scroll-amount '(2 ((shift) . 3)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

(provide 'init-builtins)
