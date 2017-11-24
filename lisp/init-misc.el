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

;; imenu-list
(x/require-package 'imenu-list)
(setq imenu-list-focus-after-activation nil)
(setq imenu-list-auto-resize t)
(setq imenu-list-position 'right)
(setq imenu-list-size 32)

;; ace jump
(x/require-package 'avy)

(provide 'init-misc)
