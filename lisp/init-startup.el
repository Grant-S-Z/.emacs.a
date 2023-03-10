;; init-startup.el -- when starting
;;; Commentary:
;;; Code:
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(electric-pair-mode t)
(global-auto-revert-mode t)
(delete-selection-mode t)

(setq auto-save-default nil)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(add-hook 'prog-mode-hook #'show-paren-mode)
(add-hook 'prog-mode-hook #'hs-minor-mode)

(provide 'init-startup)
;;; init-startup.el ends here
