(require 'package)
(eval-when-compile (require 'cl))

(defun x/require-package (package &optional no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (if (boundp 'package-selected-packages)
            ;; not record this as a package the user installed explicitly
            (package-install package t)
          (package-install package))
      (progn
        (package-refresh-contents)
        (x/require-package package t)))))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(x/require-package 'paradox)
(setq paradox-github-token "46a0c88634fc75ed729e23829b661b428d956bf8")

(provide 'init-elpa)
