(defconst x//is-a-mac (eq system-type 'darwin))

(defun x/byte-compile-init-dir ()
  "Byte-compile all your dotfiles."
  (interactive)
  (byte-recompile-directory user-emacs-directory 0)
  (dolist (elc '("lisp/init-elpa.elc"
		 "init.elc"
		 "custom_file.elc"))
    (delete-file (expand-file-name elc user-emacs-directory))))

(provide 'init-libs)
