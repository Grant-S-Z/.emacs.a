;;; init-kbd.el --- for kbd
;;; Commentary:
;;; Code:
(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(provide 'init-kbd)
;;; init-kbd.el ends here

