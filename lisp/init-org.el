;; install latest org manually
(setq org-src-fontify-natively t
      org-catch-invisible-edits 'show
      org-export-coding-system 'utf-8)
(with-eval-after-load 'org
  ;; no indent
  (setq org-startup-indented nil))

(provide 'init-org)
