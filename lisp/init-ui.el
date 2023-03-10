;;; init-ui.el -- themes of emacs
;;; Commentary:
;;; Code:

;;; Theme
;;(use-package gruvbox-theme
;; :init (load-theme 'gruvbox-dark-soft t))

(use-package monokai-theme
  :init (load-theme 'monokai t))
  

(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
	sml/theme 'respectful)
  (sml/setup))

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(provide 'init-ui)
;;; init-ui.el ends here
