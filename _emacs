'(ansi-color-faces-vector
  [default default default italic underline success warning error])
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;(set-background-color "black") ;; 使用黑色背景
(set-background-color "grey20") ;; 使用grey20背景
(set-foreground-color "white") ;; 使用白色前景
(set-face-foreground 'region "green")  ;; 区域前景颜色设为绿色
(set-face-background 'region "blue") ;; 区域背景色设为蓝色

;;(setq load-path (cons "~/.emacs.d/YouLispFilePath" load-path))
;;(load "YouLispName") ;;this command will search and load YouLispName.elc or YouLispName.el or YouLispName in order in the load-path list

;;Start to load config in init.el
;;worked;;(load (expand-file-name "~/.emacs.d/init.el") nil nil t)
(load-file "~/.emacs.d/init.el")

;;C-x RET r (revert-buffer-with-coding-system)  ;;reread the file using the correct coding system
;;C-\ Enable or disable use of the selected input method (toggle-input-method).
