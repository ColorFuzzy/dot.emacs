(menu-bar-mode -1)

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq-default
 blink-cursor-interval 0.4
 case-fold-search t
 column-number-mode t
 delete-selection-mode t
 indent-tabs-mode nil
 make-backup-files nil
 save-interprogram-paste-before-kill t
 scroll-preserve-screen-position 'always
 set-mark-command-repeat-pop t
 tooltip-delay 1.5
 truncate-lines -1
 truncate-partial-width-windows nil
 ring-bell-function 'ignore)

(xterm-mouse-mode 1)
(set-face-background 'mode-line "#303030")
(set-face-background 'mode-line-inactive "#121212")
(setq-default left-margin-width 1 riGht-margin-width 1)
;; (set-window-buffer nil (current-buffer))

;; Installed packages
;; monokai-theme

(load-theme 'monokai t)
