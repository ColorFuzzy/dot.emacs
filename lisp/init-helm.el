(x/require-package 'helm)
(x/require-package 'shackle)

(require 'helm-config)

(setq helm-buffers-fuzzy-matching t
      helm-semantic-fuzzy-match   t
      helm-imenu-fuzzy-match      t
      helm-M-x-fuzzy-match        t
      helm-locate-fuzzy-match     t
      helm-apropos-fuzzy-match    t
      helm-recentf-fuzzy-match    t
      helm-lisp-fuzzy-completion  t)
(setq helm-split-window-inside-p            nil
      helm-move-to-line-cycle-in-source     nil
      helm-ff-search-library-in-sexp        t
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line        t)
(setq helm-display-function #'pop-to-buffer)  ;; shackle
(add-hook 'helm-after-initialize-hook (lambda () (with-helm-buffer (setq truncate-lines t))))

(x/require-package 'fzf)
(x/require-package 'helm-descbinds)  ;; describe-bindings

(x/require-package 'ag)
(x/require-package 'helm-ag)

(provide 'init-helm)
