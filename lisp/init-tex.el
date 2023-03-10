;;; init-tex.el --- for tex
;;; Commentary:
;;; Code:
(use-package tex
  :defer t
  :ensure auctex
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil)
  (add-hook 'LaTeX-mode-hook
	    (lambda()
	      ( add-to-list 'TeX-command-list '("XeLaTeX" "%'xelatex%(mode)%' %t" TeX-run-TeX nil t))
	      
	      (setq TeX-command-default "XeLaTeX")
	      (setq TeX-show-compilation t))))

(use-package cdlatex)
(provide 'init-tex)
;;; init-tex.el ends here
