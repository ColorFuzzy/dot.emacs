;; install latest org manually
(setq org-src-fontify-natively t
      org-hide-emphasis-markers t
      org-catch-invisible-edits 'show
      org-export-coding-system 'utf-8)
(with-eval-after-load 'org
  (setq org-startup-indented nil)
  (add-hook 'org-mode-hook 'visual-line-mode))
(add-hook 'org-mode-hook 'toggle-truncate-lines)

(provide 'init-org)
