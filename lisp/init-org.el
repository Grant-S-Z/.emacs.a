;;; init-org.el --- for org
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(use-package org-superstar
  :after org
  :hook (org-mode . org-superstar-mode))

(provide 'init-org)
;;; init-org.el ends here
