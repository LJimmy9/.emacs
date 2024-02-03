(defun go-to-last-non-whitespace-character ()
  "Move the cursor to the last non-whitespace character on the current line."
  (interactive)
  (end-of-line)  ; Move to the end of the line
  (skip-chars-backward " \t"))  ; Skip backward over whitespace and tabs


(global-set-key (kbd "C-e") 'go-to-last-non-whitespace-character)         

(defun go-to-first-non-whitespace-character ()
  "Move the cursor to the last non-whitespace character on the current line."
  (interactive)
  (beginning-of-line)  ; Move to the end of the line
  (skip-chars-forward " \t"))  ; Skip backward over whitespace and tabs


(global-set-key (kbd "C-a") 'go-to-first-non-whitespace-character)         


(with-eval-after-load 'dired (define-key dired-mode-map (kbd "C-a") 'find-file))


(provide 'keybinds)

  
