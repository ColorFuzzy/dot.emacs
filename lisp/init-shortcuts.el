(defun x/byte-compile-init-dir ()
  "Byte-compile all your dotfiles."
  (interactive)
  (byte-recompile-directory user-emacs-directory 0)
  (dolist (elc '("lisp/init-elpa.elc" "lisp/init-shortcuts.elc" "init.elc"))
    (delete-file (expand-file-name elc user-emacs-directory))))

;; C-c e - emacs
(define-key global-map (kbd "C-c e c") 'x/byte-compile-init-dir)  ;; compile

(provide 'init-shortcuts)
