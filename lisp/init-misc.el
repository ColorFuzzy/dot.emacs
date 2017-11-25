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

;; git support
(x/require-package 'magit)

;; quickly jumps between other symbols found at point in Emacs
(x/require-package 'smartscan)
(global-smartscan-mode t)

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

(provide 'init-misc)
