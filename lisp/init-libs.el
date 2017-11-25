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

;; x/active-region-mode
(defvar x//active-region-mode-map
  (let ((map (make-sparse-keymap)))
    map))
(define-minor-mode x/active-region-mode
  "Active Region minor mode."
  :init-value nil
  :lighter nil
  :keymap x//active-region-mode-map
  :group nil
  )

(defun x/active-region-on ()
  (x/active-region-mode 1))
(defun x/active-region-off ()
  (x/active-region-mode -1))
(add-hook 'activate-mark-hook 'x/active-region-on)
(add-hook 'deactivate-mark-hook 'x/active-region-off)

(provide 'init-libs)
