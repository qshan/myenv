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
;;M-x load-theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;Enable installation of packages from MELPA by adding an entry to
;;;;;package-archives after (require 'package) and before the call to
;;;;;package-initialize in your init.el or .emacs file:

;;;;;add package-initialize in your init.el or .emacs file
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;;;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;;;;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-initialize)
;;;;;Note that you'll need to run
;;M-x package-refresh-contents
;;;;;or
;;M-x package-list-packages
;;;;;to ensure that Emacs has fetched the MELPA package list before
;;you can install packages with
;;M-x package-install
;;;;;or similar.
;;;;;To use the stable package repository instead of the default “bleeding-edge” repository, use this instead of "melpa":
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;Install evil via package.el(MELPA), execute the following commands:
;;M-x package-refresh-contents
;;M-x package-install RET evil RET
;;;;;Finally, add the following lines to your Emacs init file, like ~/.emacs:
;;(require 'evil)
;;(evil-mode 1)
;;;;;--------------------------------------------------
;;;;;Manually install evil, First, install goto-chg and cl-lib. Evil lives in a git repository. To download Evil, do:
;;git clone --depth 1 https://github.com/emacs-evil/evil.git
;;;;;Then add the following lines to your Emacs init file, like ~/.emacs:
;;(add-to-list 'load-path "path/to/evil")
;;(require 'evil)
;;(evil-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;Press C-h t ;; to read bundled tutorial.

