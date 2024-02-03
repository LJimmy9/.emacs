(setq inhibit-startup-message t)
(setq visible-bell t)
(setq default-directory "~")

(ido-mode 1)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'keybinds)
;; (global-set-key (kbd "M-x") 'smex)              
;; (global-set-key (kbd "M-X") 'smex-major-node-commands)
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(load-theme 'leuven-dark t)

(set-frame-font "FiraMono Nerd Font-16" nil t)
;; (set-frame-font "Monospace-18")
(defun enable-line-numbers (hook-name)
  (message "Enabling line numbers for %s" hook-name)
  (display-line-numbers-mode 1)
)

(add-hook 'prog-mode-hook (lambda () (enable-line-numbers "prog-mode-hook")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit with-editor transient dash)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
