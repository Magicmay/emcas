
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-resolve)

;;yashipet
(add-to-list 'load-path
                  "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/yasnippet/snippets")
;;    (yas-global-mode 1)
(setq yas/prompt-functions 
   '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
(yas/global-mode 1)
(yas/minor-mode-on) ; 以minor mode打开，这样才能配合主mode使用


;; auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
	     "~/.emacs.d/auto-complete-1.3.1/ac-dict")
(ac-config-default)

;;doxymacs
(add-to-list 'load-path "~/.emacs.d/doxymacs-1.8.0/lisp")
(add-to-list 'load-path "~/.emacs.d/doxymacs-1.8.0/no-autoconf")
(require 'doxymacs)

(doxymacs-mode);doxymacs-mode常true  
(add-hook 'c-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode  
(add-hook 'c++-mode-common-hook 'doxymacs-mode) ;; 启动doxymacs-mode

 ;;注释高亮，针对C和C++程序  
(defun my-doxymacs-font-lock-hook ()  
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))  
      (doxymacs-font-lock)))  
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)
