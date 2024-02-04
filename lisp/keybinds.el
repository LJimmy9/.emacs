(defun open-file-at-point ()
  "Open the file name under the cursor."
  (interactive)
  (let ((filename (thing-at-point 'filename)))
    (if (and filename (file-exists-p filename))
        (find-file filename)
      (message "No valid file at point!"))))

(global-set-key (kbd "C-c C-o") 'open-file-at-point)



(provide 'keybinds)

  
