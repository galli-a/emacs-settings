(require 'cl)
(require 'package)

; add marmalade to the package archive source list
(require 'package)
(add-to-list 'package-archives
       '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

; add melpa to the package archive source list
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; required because of a package.el bug
(setq url-http-attempt-keepalives nil)

; handle proxy
; (setq url-proxy-services '(("http" . "proxy3.whirlpool.com:8080")
;   ("https" . "proxy3.whirlpool.com:8080")))

;;
(defvar my-packages
  '(markdown-mode
    python
    solarized-theme
    zenburn-theme
    color-theme-dawn-night
    powerline)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'my_packages)
;;; my-packages.el ends here
