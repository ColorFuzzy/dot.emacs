(defconst x//is-a-mac (eq system-type 'darwin))

(defun x/byte-compile-init-dir ()
  "Byte-compile all your dotfiles."
  (interactive)
  (byte-recompile-directory user-emacs-directory 0)
  (dolist (elc '("lisp/init-elpa.elc"
		 "init.elc"
		 "custom_file.elc"))
    (delete-file (expand-file-name elc user-emacs-directory))))

(defun x/create-tmp-buffer ()
  (interactive)
  (cl-loop for index from 1 to 99
         do (let ((name (format "*tmp%02d*" index)))
              (unless (get-buffer name)
                (progn
                  (push-mark)
                  (switch-to-buffer (get-buffer-create name))
                  (cl-return))))))

(defun x/eval()
  (interactive)
  (if (region-active-p)
      (eval-region (region-beginning) (region-end) t)
    (call-interactively 'eval-last-sexp)))

(provide 'init-libs)
