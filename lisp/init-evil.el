(x/require-package 'evil)

(add-hook 'after-init-hook
          (lambda ()
            (evil-mode t)
            (setq evil-default-state 'emacs)
            (evil-set-initial-state 'Info-mode 'emacs)
            (evil-set-initial-state 'help-mode 'emacs)
            ))

(provide 'init-evil)
