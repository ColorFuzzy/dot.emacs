(x/require-package 'helm-projectile)

(setq projectile-completion-system 'helm)
(setq projectile-enable-caching nil)
(setq projectile-switch-project-action 'helm-projectile)

(projectile-global-mode)
(helm-projectile-on)

(custom-set-variables
 '(projectile-mode-line (quote (:eval (if (file-remote-p default-directory)
                                          " Projectile"
                                        (format " [%s]" (projectile-project-name)))))))

(provide 'init-projects)
