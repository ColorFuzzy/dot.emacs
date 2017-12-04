;; highlight-symbol
(x/require-package 'highlight-symbol)
(dolist (hook '(prog-mode-hook html-mode-hook css-mode-hook))
  (add-hook hook 'highlight-symbol-mode)
  (add-hook hook 'highlight-symbol-nav-mode))
(add-hook 'org-mode-hook 'highlight-symbol-nav-mode)
(setq highlight-symbol-idle-delay 0)

;; indent-guide
(x/require-package 'indent-guide)
(add-hook 'prog-mode-hook 'indent-guide-mode)

;; file manager
(x/require-package 'neotree)
(setq neo-window-width 24)
(setq neo-theme 'arrow)

;; sr-speedbar
(x/require-package 'sr-speedbar)
(setq speedbar-use-images nil)
(setq sr-speedbar-width 27)
(setq speedbar-initial-expansion-list-name "buffers")
(setq sr-speedbar-right-side t)
(setq sr-speedbar-auto-refresh t)
(add-hook 'window-setup-hook
          (lambda ()
            (sr-speedbar-open)
            (with-current-buffer sr-speedbar-buffer-name
              (setq window-size-fixed 'width))
            (switch-to-buffer "*scratch*")))

;; imenu-list
(x/require-package 'imenu-list)
(setq imenu-list-focus-after-activation nil)
(setq imenu-list-auto-resize nil)
(setq imenu-list-position 'left)
(setq imenu-list-size 27)

;; ace jump
(x/require-package 'avy)

;; git support
(x/require-package 'magit)

;; rest client
(x/require-package 'restclient)
(x/require-package 'restclient-helm)

;; aggressive-indent
(x/require-package 'aggressive-indent)
(add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode)

;; snippet
(x/require-package 'yasnippet)
(yas-global-mode 1)

;; wrap-region
(x/require-package 'wrap-region)
(wrap-region-global-mode t)
(wrap-region-add-wrappers
 '(("~" "~" "c" (org-mode))  ;; code
   ("=" "=" "h" (org-mode))  ;; head
   ("+" "+" "d" (org-mode))  ;; delete
   ("*" "*" "b" (org-mode))))  ;; bold

;; emamux - send text to tmux
(x/require-package 'emamux)
(setq-default emamux:completing-read-type 'helm)

;; zoom-window - like C-q z in tmux
(x/require-package 'zoom-window)

;; dired enhancement
(x/require-package 'dired+)
(x/require-package 'dired-sort)
(setq-default diredp-hide-details-initially-flag nil
              dired-dwim-target t)
(let ((gls (executable-find "gls")))
  (when gls (setq insert-directory-program gls)))
(with-eval-after-load 'dired
  (require 'dired+)
  (require 'dired-sort)
  (when (fboundp 'global-dired-hide-details-mode)
    (global-dired-hide-details-mode -1))
  (setq dired-recursive-deletes 'top))
(when (x/require-package 'diff-hl)
  (with-eval-after-load 'dired
    (add-hook 'dired-mode-hook 'diff-hl-dired-mode)))
(autoload 'dired-jump "dired-x"
  "Jump to Dired buffer corresponding to current buffer." t)

(provide 'init-misc)
