(x/require-package 'which-key)
(which-key-mode t)
(setq which-key-idle-delay 1.0)
(setq which-key-side-window-max-height 0.54)

(x/require-package 'key-chord)
(key-chord-mode t)
(key-chord-define-global "jj" 'avy-goto-word-1)

(when x//is-a-mac
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

(add-hook 'helm-after-initialize-hook
          (lambda ()
            (define-key helm-map (kbd "C-z")  'helm-select-action)
            ;; rebind tab to run persistent action && make TAB work in terminal
            (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) 
            (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)))

(define-key global-map (kbd "C-c e a") 'sr-speedbar-toggle)
(define-key global-map (kbd "C-c e m") (lambda () (interactive) (switch-to-buffer (get-buffer "*Messages*"))))
(define-key global-map (kbd "C-c e s") (lambda () (interactive) (switch-to-buffer (get-buffer "*scratch*"))))
(define-key global-map (kbd "C-c e f") 'fzf)
(define-key global-map (kbd "C-c e g") 'fzf-git)
(define-key global-map (kbd "C-c e t") 'neotree-toggle)
(define-key global-map (kbd "C-c e i") 'imenu-list-smart-toggle)
(define-key global-map (kbd "C-c e n") 'highlight-symbol-next)
(define-key global-map (kbd "C-c e p") 'highlight-symbol-prev)
(define-key global-map (kbd "C-c e z") 'zoom-window-zoom)

(define-key global-map (kbd "C-c b n") 'next-buffer)
(define-key global-map (kbd "C-c b p") 'previous-buffer)
(define-key global-map (kbd "C-c b c") 'x/create-tmp-buffer)

(define-key global-map (kbd "C-c t r") 'emamux:send-region)  ;; C-u to change pane
(define-key global-map (kbd "C-c t c") 'emamux:send-command)

(define-key global-map (kbd "C-c h") 'helm-command-prefix)
(define-key global-map (kbd "C-c h x") 'helm-register)

(define-key global-map (kbd "C-c v s") 'magit-status)

(define-key global-map (kbd "C-h b") 'helm-descbinds)
(define-key global-map (kbd "C-o") 'evil-execute-in-normal-state)
(define-key global-map (kbd "C-s") 'helm-occur)
(define-key global-map (kbd "C-x b") 'helm-mini)
(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
(define-key global-map (kbd "C-x C-e") 'x/eval)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "C-x r b") 'helm-bookmarks)
(define-key global-map (kbd "C-z") 'evil-exit-emacs-state)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

(define-key global-map (kbd "M-n") 'highlight-symbol-next)
(define-key global-map (kbd "M-p") 'highlight-symbol-prev)

(provide 'init-shortcuts)
