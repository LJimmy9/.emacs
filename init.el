(setq inhibit-startup-message t)
(setq visible-bell t)
(setq default-directory "~")

(setq initial-frame-alist '((fullscreen . maximized)))
(setq backup-directory-alist
      `(("." . "~/.emacs.d/backups")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/auto-save-list/" t)))

(setq custom-file "~/.emacs.d/custom.el")

(ido-mode)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(load-theme 'leuven-dark t)
(set-frame-font "FiraMono Nerd Font-16" nil t)
(display-line-numbers-mode)

;; (set-frame-font "Monospace-18")
;; (defun enable-line-numbers (hook-name)
;;   (message "Enabling line numbers for %s" hook-name)
;;   (display-line-numbers-mode 1)
;; )
;; (add-hook 'prog-mode-hook (lambda () (enable-line-numbers "prog-mode-hook")))

(require 'keybinds)

(split-window-right)

(dired "~")

(find-file "~/.emacs.d/notes-keybind.txt")
