(menu-bar-mode -1)

;; auto backgroud the color value
(x/require-package 'rainbow-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-mode)

;; monokai theme
(x/require-package 'monokai-theme)
(load-theme 'monokai t)

(setq-default left-margin-width 1 right-margin-width 0)

(set-face-background 'mode-line "#303030")
(set-face-background 'mode-line-inactive "#121212")

(provide 'init-themes)
