(when x//is-a-mac
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none))

;; C-c e - emacs
(define-key global-map (kbd "C-c e c") 'x/byte-compile-init-dir)
(define-key global-map (kbd "C-c e s") (lambda () (interactive) (switch-to-buffer (get-buffer "*scratch*"))))
(define-key global-map (kbd "C-c e m") (lambda () (interactive) (switch-to-buffer (get-buffer "*Messages*"))))

;; C-c b - buffer
;;(define-key global-map (kbd "C-c b n") 'x/byte-compile-init-dir)  ;; new buffer

(provide 'init-shortcuts)
