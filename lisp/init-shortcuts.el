(when x//is-a-mac
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

;; C-c e - emacs
;;(define-key global-map (kbd "C-c e c") 'x/byte-compile-init-dir)
(define-key global-map (kbd "C-c e s") (lambda () (interactive) (switch-to-buffer (get-buffer "*scratch*"))))
(define-key global-map (kbd "C-c e m") (lambda () (interactive) (switch-to-buffer (get-buffer "*Messages*"))))
(define-key global-map (kbd "C-c e f") 'fzf)
(define-key global-map (kbd "C-c e g") 'fzf-git)

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

(provide 'init-shortcuts)
