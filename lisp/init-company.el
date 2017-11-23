(x/require-package 'company)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)

(provide 'init-company)
