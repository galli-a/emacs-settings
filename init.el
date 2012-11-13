; add marmalade to the package archive source list
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

; change default font
(set-face-attribute 'default nil :family "Consolas" :height 120)

; set custom file
(setq custom-file "~/emacs-settings/custom.el")
(load custom-file)

; remove toolbar from graphical mode
(tool-bar-mode -1)
; remove menubar from graphical mode
; (menu-bar-mode -1)

; display line number
(global-linum-mode 1)

; enable IDO mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
; make IDO mode work with find-files as well
(setq ido-everywhere t)

; hide splash screen and banner
(setq inhibit-startup-message t inhibit-startup-echo-area-message t)

; automatic indentation
(define-key global-map (kbd "RET") 'newline-and-indent)

; set frame size
(if window-system
      (set-frame-size (selected-frame) 140 35))

; load solarized theme
(load-theme 'solarized-dark t)