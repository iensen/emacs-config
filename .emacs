#!/usr/bin/tail +2

(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "us") ; US
(load-file "~/.emacs.d/ergoemacs/site-lisp/site-start.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ergoemacs-mode-used "5.13.12-1")
 '(ergoemacs-theme nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completions-common-part ((t (:inherit default :foreground "red"))))
 '(diredp-compressed-file-suffix ((t (:foreground "#7b68ee"))))
 '(diredp-ignored-file-name ((t (:foreground "#aaaaaa"))))
 '(show-paren-match ((((class color) (background light)) (:background "azure2")))))

;; auto-indent
(define-key global-map (kbd "RET") 'newline-and-indent )
;; load packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
 )

(require 'tex-site)
;; for latex
(setq TeX-auto-save t)
    (setq TeX-parse-self t)
    (setq-default TeX-master nil)
    (add-hook 'LaTeX-mode-hook 'visual-line-mode)
    (add-hook 'LaTeX-mode-hook 'flyspell-mode)
    (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
    (add-hook 'LaTeX-mode-hook 'turn-on-reftex)
    (setq reftex-plug-into-AUCTeX t)
    (setq TeX-PDF-mode t)
(add-to-list 'load-path "~/.emacs.d/predictive/")
(add-to-list 'load-path "~/.emacs.d/predictive/dictionaries/")
(add-to-list 'load-path "~/.emacs.d/predictive/latex/")
(require 'predictive)
(autoload 'predictive-mode "predictive" "predictive" t)
(set-default 'predictive-auto-add-to-dict t)
(setq predictive-main-dict 'rpg-dictionary
      predictive-auto-learn t
      predictive-add-to-dict-ask nil
      predictive-use-auto-learn-cache nil
      predictive-which-dict t)


;; enable lines and columns
 (setq column-number-mode t)
 (setq line-number-mode t)
 ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
 (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
 ;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'after-init-hook
          '(lambda () (setq debug-on-error t)))
