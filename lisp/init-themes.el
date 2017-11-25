(require 'cl-lib)

;; hide menu-bar
(menu-bar-mode -1)

;; auto backgroud the color value
(x/require-package 'rainbow-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-mode)

;; rainbow delimiters
(x/require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; monokai theme
(x/require-package 'monokai-theme)
(load-theme 'monokai t)

;; set margin
(setq-default
 left-margin-width 1
 right-margin-width 0)

;; mode-line face
(set-face-background 'mode-line "#303030")
(set-face-background 'mode-line-inactive "#121212")

;; avy
(with-eval-after-load 'avy
  (set-face-background 'avy-lead-face-0 "#800000")
  (set-face-background 'avy-lead-face-0 "#008000"))

;; highlight current line
(global-hl-line-mode t)
(set-face-background 'hl-line "#282828")

;; diminish - mode-line
(x/require-package 'diminish)
(with-eval-after-load 'company (diminish 'company-mode))
(with-eval-after-load 'rainbow-mode (diminish 'rainbow-mode))
(with-eval-after-load 'undo-tree (diminish 'undo-tree-mode))
(with-eval-after-load 'guide-key (diminish 'guide-key-mode))
(with-eval-after-load 'highlight-symbol (diminish 'highlight-symbol-mode))
(with-eval-after-load 'indent-guide (diminish 'indent-guide-mode))

;; helm & shackle
(with-eval-after-load 'helm-files
  (set-face-background 'helm-ff-dotted-directory nil))

;; window management
(setq shackle-rules '(("\\`\\*helm.*?\\*\\'" :regexp t :align t :ratio 0.46)
                      ("*Help*" :select t :align t :ratio 0.46)))
(shackle-mode)

(provide 'init-themes)
