(require 'cl-lib)

;; gui elements & margin & fringe
(if (display-graphic-p)
    (progn
      (scroll-bar-mode -1)
      (tool-bar-mode -1)
      (fringe-mode '(8 . 0)))
  (progn
    (menu-bar-mode -1)
    (setq-default
     left-margin-width 1
     right-margin-width 0)))

;; window size
(setq default-frame-alist '((width . 120) (height . 38)))

;; auto backgroud the color value
(x/require-package 'rainbow-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-mode)

;; rainbow delimiters
(x/require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; monokai theme
(x/require-package 'monokai-theme)
(load-theme 'monokai t)

;; highlight current line
(global-hl-line-mode t)

;; diminish - mode-line
(x/require-package 'diminish)
(with-eval-after-load 'company (diminish 'company-mode))
(with-eval-after-load 'rainbow-mode (diminish 'rainbow-mode))
(with-eval-after-load 'undo-tree (diminish 'undo-tree-mode))
(with-eval-after-load 'guide-key (diminish 'guide-key-mode))
(with-eval-after-load 'highlight-symbol (diminish 'highlight-symbol-mode))
(with-eval-after-load 'indent-guide (diminish 'indent-guide-mode))
(with-eval-after-load 'auto-revert-mode (diminish 'auto-revert-mode))

;; window management
(setq shackle-rules '(("\\`\\*helm.*?\\*\\'" :regexp t :align t :ratio 0.46)
                      ("*Help*" :select t :align t :ratio 0.46)))
(shackle-mode)

(if (display-graphic-p)
    (custom-set-faces
     ;; font suport: Source Code Pro & Monaco
     '(default ((t (:family "Source Code Pro")))) 
     ;; show paren match
     '(show-paren-match-face ((t (:underline t :strike-through t :foreground nil :background nil))))
     ;; highlight-symbol
     '(highlight-symbol-face ((t (:underline t))))
     ;; mode-line
     '(mode-line ((t (:background "#006030" :box nil))))
     '(mode-line-inactive ((t (:background "#006030" :box nil))))
     ;; region
     '(region ((t (:background "#208020"))))
     ;; helm & shackle
     '(helm-ff-dotted-directory ((t (:foreground "#AAAAAA"))))
     '(helm-buffer-modified ((t (:foreground "#CC0000" :weight bold))))
     ;; sr-speedbar
     '(speedbar-separator-face ((t (:weight bold :foreground "#00CC00" :background nil :box nil :overline nil))))
     )
  (custom-set-faces
   ;; show paren match
   '(show-paren-match-face ((t (:underline t :strike-through t :foreground nil :background nil))))
   ;; highlight-symbol
   '(highlight-symbol-face ((t (:underline t))))
   ;; mode-line
   '(mode-line ((t (:background "#303030"))))
   '(mode-line-inactive ((t (:background "#121212"))))
   ;; region
   '(region ((t (:background "#203020"))))
   ;; highlight current line
   '(hl-line ((t (:background "#282828"))))
   ;; indent guide
   '(indent-guide-face ((t (:foreground "#800000"))))
   ;; helm & shackle
   '(helm-ff-dotted-directory ((t (:background "#101010"))))
   '(helm-buffer-modified ((t (:foreground "#CC0000" :weight bold))))
   ;; avy
   '(avy-lead-face-0 ((t (:background "#008000"))))
   ;; sr-speedbar
   '(speedbar-separator-face ((t (:weight bold :foreground "#00CC00" :background nil :box nil :overline nil))))
   ))

(provide 'init-themes)
