(require 'cl-lib)

;; hide menu-bar
(menu-bar-mode -1)

;; auto backgroud the color value
(x/require-package 'rainbow-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-mode)

;; monokai theme
(x/require-package 'monokai-theme)
(load-theme 'monokai t)

;; rainbow delimiters
(x/require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; set margin
(setq-default left-margin-width 1 right-margin-width 0)

;; mode-line face
(set-face-background 'mode-line "#303030")
(set-face-background 'mode-line-inactive "#121212")

;; diminish - mode-line
(x/require-package 'diminish)
(cl-loop for (file-or-mode-name . mode-name) in '((company . company-mode)
				(rainbow-mode . rainbow-mode))
	 do (with-eval-after-load file-or-mode-name
	      (diminish mode-name)))

(provide 'init-themes)
