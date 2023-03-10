;;; init-scheme.el --- for mit-scheme
;;; Commentary:
;;; Code:
(setq scheme-program-name "/usr/bin/mit-scheme")
;;; Always do syntax highlighting
(global-font-lock-mode 1)
;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;; scmutils with scheme
(defun mechanics ()
  (interactive)
  (run-scheme
   "/usr/local/bin/mechanics"
  ))


(fset 'set-working-dir
      (lambda (&optional arg) "Keyboard macro."
    (interactive "p")
    (kmacro-exec-ring-item
     (quote ("(set-working-directory-pathname! 
                  \"~/Documents/\")\n" 0 "%d")) arg)))
  
(fset 'load-scm
      (lambda (&optional arg) "Keyboard macro."
    (interactive "p")
    (kmacro-exec-ring-item
     (quote ("(load \"tt.scm\")" 0 "%d")) arg)))
  
(defun mec ()
  (interactive)
  (split-window-below)
  (windmove-down)
  (mechanics)
  (set-working-dir)
  (comint-send-input)
  (windmove-up)         
  (find-file "~/Documents/tt.scm")
  (end-of-buffer)
  (windmove-down)
  (cond ((file-exists-p "~/Documents/tt.scm")
     (interactive)
     (load-scm)
     (comint-send-input)))
  (windmove-up)
)
  
(defun cxce ()
  (interactive)
  (save-buffer)
  (windmove-down)
  (load-scm)
  (comint-send-input)
  (windmove-up)
)
  
(global-set-key (kbd "C-x C-e") 'cxce)

(provide 'init-scheme)
;;; init-scheme.el ends here
