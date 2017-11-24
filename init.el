;; notes:
;;   x//variable
;;   x/function

;; (package-initialize) ;; emacs needs this line

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(defconst x//is-a-mac (eq system-type 'darwin))

;; should at the very first
(require 'init-elpa)

(require 'init-builtins)
(require 'init-company)

;; should at the very last
(require 'init-themes)  
(require 'init-shortcuts)

;; -----------------------------------------------------------------------------

;; helm & shackle
(x/require-package 'helm)
(x/require-package 'shackle)
(require 'helm-config)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "C-s") 'helm-occur)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(setq helm-buffers-fuzzy-matching t
      helm-semantic-fuzzy-match   t
      
      helm-imenu-fuzzy-match      t
      helm-M-x-fuzzy-match        t
      helm-locate-fuzzy-match     t
      helm-apropos-fuzzy-match    t
      helm-recentf-fuzzy-match    t
      helm-lisp-fuzzy-completion  t)
(setq helm-split-window-in-side-p           nil
      helm-move-to-line-cycle-in-source     nil
      helm-ff-search-library-in-sexp        t
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)
(setq helm-display-function #'pop-to-buffer)
(setq shackle-rules '(("\\`\\*helm.*?\\*\\'" :regexp t :align t :ratio 0.46)))
(with-eval-after-load 'helm-files
  (set-face-background 'helm-ff-dotted-directory nil))
(shackle-mode)
