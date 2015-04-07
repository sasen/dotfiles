 (autoload 'matlab-mode "matlab" "Enter Matlab mode." t)
 (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
 (autoload 'matlab-shell "matlab" "Interactive Matlab mode." t)