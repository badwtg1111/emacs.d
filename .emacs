
;; for emacs-window-manager
;(add-to-list 'load-path "~/.emacs.d/vendor/emacs-window-manager/")
;(require 'e2wm)
;(global-set-key (kbd "M-+") 'e2wm:start-management)
;(provide 'init-e2wm)


;; for emacs-powerline
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)

;; for neotree ,just like nerdtree in vim
(add-to-list 'load-path "~/.emacs.d/vendor/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)




;;add jdee cedet and jdee 
(add-to-list 'load-path "~/.emacs.d/cedet-1.1/common")
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
;; for cedet
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(add-to-list 'load-path (expand-file-name "~/.emacs.d/pub/comp/os/unix/gnu/elib/elib-1.0"))
(require 'jde)
;;add ecb, emacs code browser
(add-to-list 'load-path  "~/.emacs.d/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)
;;we need some lisp to prevent fatal errors.
(defun screen-width nil -1)
(setq jde-check-version-flag nil)
(define-obsolete-function-alias 'make-local-hook 'ignore "21.1")
(unless (fboundp 'semantic-format-prototype-tag-java-mode)
(defalias 'semantic-format-prototype-tag-java-mode 'semantic-format-tag-prototype-java-mode))
(require 'hippie-exp)
;;we use something to  load JDEE for .java files :
(add-to-list 'load-path (format "%s/lisp" "~/.emacs.d/jdee-2.4.1" "Path to JDEE"))
(autoload 'jde-mode "jde" "JDE mode." t)
(setq auto-mode-alist
    (append '(("\\.java\\'" . jde-mode)) auto-mode-alist))
(setq stack-trace-on-error t)



;; load default
(load-file "~/.emacs.d/init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.bmk")
 '(jde-jdk (quote ("1.7")))
 '(jde-jdk-registry (quote (("1.7" . "/usr/lib/jvm/java-7-oracle"))))
 '(safe-local-variable-values (quote ((emacs-lisp-docstring-fill-column . 75) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby"))))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(window-numbering-face ((t (:foreground "DeepPink" :underline "DeepPink" :weight bold))) t))
