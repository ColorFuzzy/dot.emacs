(x/require-package 'guide-key)
(setq guide-key/guide-key-sequence
      '("C-c e"
        "C-c h"
        "C-c p"
        "C-c"
        "C-h"
        "C-x 4"
        "C-x 5"
        "C-x C-k",
        "C-x n"
        "C-x r"
        "C-x v"
        "C-x"
        "M-g",
        "M-s h",
        "M-s"))
(setq guide-key/idle-delay 1.0)
(add-hook 'after-init-hook
          (lambda () (guide-key-mode 1)))

(when x//is-a-mac
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

;; todo: make it work in terminal
(define-key global-map (kbd "S-SPC") 'avy-goto-char-2)

;; C-c e - emacs
;;(define-key global-map (kbd "C-c e c") 'x/byte-compile-init-dir)
(define-key global-map (kbd "C-c e s") (lambda () (interactive) (switch-to-buffer (get-buffer "*scratch*"))))
(define-key global-map (kbd "C-c e m") (lambda () (interactive) (switch-to-buffer (get-buffer "*Messages*"))))
(define-key global-map (kbd "C-c e f") 'fzf)
(define-key global-map (kbd "C-c e g") 'fzf-git)
(define-key global-map (kbd "C-c e t") 'neotree-toggle)

;; C-c b - buffer
;;(define-key global-map (kbd "C-c b n") 'x/byte-compile-init-dir)  ;; new buffer

;; evil: C-z & C-o
(define-key global-map (kbd "C-o") 'evil-execute-in-normal-state)
(define-key global-map (kbd "C-z") 'evil-exit-emacs-state)

;; helm
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "C-s") 'helm-occur)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "C-c h") 'helm-command-prefix)
(define-key global-map (kbd "C-c h x") 'helm-register)
(define-key global-map (kbd "C-x b") 'helm-mini)
(define-key global-map (kbd "C-h b") 'helm-descbinds)
(add-hook 'helm-after-initialize-hook
          (lambda ()
            (define-key helm-map (kbd "C-z")  'helm-select-action)
            ;; rebind tab to run persistent action && make TAB work in terminal
            (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) 
            (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)))

(provide 'init-shortcuts)
