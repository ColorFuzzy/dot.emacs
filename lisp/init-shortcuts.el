(defun x/byte-compile-init-dir ()
  "Byte-compile all your dotfiles."
  (interactive)
  (byte-recompile-directory user-emacs-directory 0)
  (dolist (elc '("lisp/init-elpa.elc" "lisp/init-shortcuts.elc" "init.elc"))
    (delete-file (expand-file-name elc user-emacs-directory))))

;; C-c e - emacs
(define-key global-map (kbd "C-c e c") 'x/byte-compile-init-dir)
(define-key global-map (kbd "C-c e s") (lambda () (interactive) (switch-to-buffer (get-buffer "*scratch*"))))
(define-key global-map (kbd "C-c e m") (lambda () (interactive) (switch-to-buffer (get-buffer "*Messages*"))))

;; C-c b - buffer
;;(define-key global-map (kbd "C-c b n") 'x/byte-compile-init-dir)  ;; new buffer

(provide 'init-shortcuts)
