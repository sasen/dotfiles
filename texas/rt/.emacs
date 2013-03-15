(setq load-path (cons "/usr/share/emacs23/site-lisp/global/gtags.elc" load-path))
(autoload 'gtags-mode "gtags" "" t)

(add-hook 'c++-mode-hook '(lambda () (gtags-mode t)))

(autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
(setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)

;; User Level customizations (You need not use them all):
(setq matlab-indent-function t); if you want function bodies indented
;;   (setq matlab-verify-on-save-flag nil) ; turn off auto-verify on save
(defun my-matlab-mode-hook ()
  (setq fill-column 76)); where auto-fill should wrap
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
;;   (defun my-matlab-shell-mode-hook ()
;;'())
;;   (add-hook 'matlab-shell-mode-hook 'my-matlab-shell-mode-hook)
;;
;; Please read the mode help for matlab-mode for additional
;; configuration options.
;;
;; Syntax highlighting:
;;   To get font-lock try adding this for older emacsen:
;;     (font-lock-mode 1)
;;   Or for newer versions of Emacs:
(global-font-lock-mode t)
;;   To get hilit19 support try adding:
;;     (matlab-mode-hilit)