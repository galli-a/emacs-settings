; copy this file in the home directory as .emacs
;

; path for loading additional files
(add-to-list 'load-path "~/emacs-settings")

; load package managment file
(load-library "my_packages.el")

; load initialization file
(load-library "init.el")