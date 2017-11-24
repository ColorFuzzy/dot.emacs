(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; should at the very first
(require 'init-libs)
(require 'init-elpa) ;; (package-initialize)

(require 'init-builtins)
(require 'init-helm)
(require 'init-projects)
(require 'init-evil)
(require 'init-company)

;; should at the very last
(require 'init-themes)  
(require 'init-shortcuts)

;; -----------------------------------------------------------------------------

;; helm & shackle
(with-eval-after-load 'helm-files
  (set-face-background 'helm-ff-dotted-directory nil))
