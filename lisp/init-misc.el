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
(setq sr-speedbar-auto-refresh nil)
(add-hook 'window-setup-hook 'sr-speedbar-open)

;; imenu-list
(x/require-package 'imenu-list)
(setq imenu-list-focus-after-activation nil)
(setq imenu-list-auto-resize t)
(setq imenu-list-position 'right)
(setq imenu-list-size 32)

;; ace jump
(x/require-package 'avy)

;; git support
(x/require-package 'magit)

;; rest client
(x/require-package 'restclient)
(x/require-package 'restclient-helm)
(eval-after-load 'restclient
  '(progn
     (define-key restclient-mode-map (kbd "C-c C-j") #'helm-restclient)
     (defun helm-restclient ()
       "Helm for Restclient."
       (interactive)
       (helm :sources '(restclient-helm-variables-source restclient-helm-requests-source)))))

;; aggressive-indent
(x/require-package 'aggressive-indent)
(add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode)

(provide 'init-misc)
