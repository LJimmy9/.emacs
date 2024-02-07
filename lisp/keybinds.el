(defun open-file-at-point ()
  "Open the file name under the cursor."
  (interactive)
  (let ((filename (thing-at-point 'filename)))
    (if (and filename (file-exists-p filename))
        (find-file filename)
      (message "No valid file at point!"))))

(global-set-key (kbd "C-c C-o") 'open-file-at-point)

(defun org-mode-setup ()
  "Custom Org mode settings."
  ;; Set `C-c C-o` to its default Org action or disable it.
  ;; To disable, use: (local-unset-key (kbd "C-c C-o"))
  ;; To set it to the default Org action, use:
  (local-set-key (kbd "C-c C-o") 'org-open-at-point))

(add-hook 'org-mode-hook 'org-mode-setup)

(global-set-key (kbd "C-x C-o") 'other-window)

(global-set-key (kbd "C-x C-b") 'buffer-menu)
(global-set-key (kbd "C-x C-S-b") 'buffer-menu-other-window)

(global-set-key (kbd "C-x C-d") 'dired)
(global-set-key (kbd "C-x C-S-d") 'dired-other-window)


(global-set-key (kbd "C-x C-f") 'find-file)
(global-set-key (kbd "C-x C-S-f") 'find-file-other-window)

(provide 'keybinds)

  
