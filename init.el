(cua-mode t)

(column-number-mode 1)

(set-default 'truncate-lines t)

(setq shift-select-mode t) 

;(global-hl-line-mode f)

;; package repos
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

;; autoinstall packages

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings clojure-mode)

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p))))

(load-theme 'misterioso)

(set-face-attribute 'default nil :height 100)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("e254937cba0f82c2d9eb3189a60748df9e486522" "485737acc3bedc0318a567f1c0f5e7ed2dfde3fb" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
