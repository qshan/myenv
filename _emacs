;; -*-Lisp-*-                                        ;
;; -*- mode: Lisp;-*-
;; -*- mode: Lisp; eval: (auto-fill-mode 1); -*-

;;https://zhuanlan.zhihu.com/p/64131744
;;https://huadeyu.tech/tools/emacs-setup-notes.html
;;https://www.cnblogs.com/youge/p/4518739.html
;;https://blog.csdn.net/redguardtoo/article/details/7222501
;;https://orgmode.org/

;;company --> auto-complete
;;flymake --> flycheck
;;Etags   --> ctags???

'(ansi-color-faces-vector
  [default default default italic underline success warning error])
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;encoding and envs
(prefer-coding-system 'utf-8)
(setenv "LANG" "en_US.UTF-8")
(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LC_CTYPE" "en_US.UTF-8")

;;(set-background-color "grey20")        ;; 使用grey20背景
(set-background-color "black")       ;; 使用黑色背景
(set-foreground-color "white")         ;; 使用白色前景
(set-face-foreground 'region "green")  ;; 区域前景颜色设为绿色
(set-face-background 'region "blue")   ;; 区域背景色设为蓝色

;;(setq load-path (cons "~/.emacs.d/YouLispFilePath" load-path))
;;(load "YouLispName") ;;this command will search and load YouLispName.elc or YouLispName.el or YouLispName in order in the load-path list

;;to_check_underscore_motion_setting
;;to-check-middlescore-motion-setting
;;ToCheckCamelCaseCodeStyle
;;(with-evil-after-load `evil (defalias #`forward-evil-word #`forward-evil-symbol))

;;Start to load config in init.el
;;worked;;(load (expand-file-name "~/.emacs.d/init.el") nil nil t)
(load-file "~/.emacs.d/init.el")
(menu-bar-mode t)    ;;show the menu bar in the GUI
;;M-x menu-bar-mode  ;;show the menu bar with command
;;(menu-bar-mode -1) ;;disable the menu bar in GUI
;;(tool-bar-mode t)
;;(scroll-bar-mode t)
;;(scroll-bar-mode -1)
(display-time-mode 1)
(column-number-mode 1)
(show-paren-mode 1)
(display-battery-mode 1)
(toggle-scroll-bar t)
(global-auto-revert-mode t)
;;(global-hl-line-mode t)
;;set the frame info here
(setq frame-title-format "%b")
;;
;;;;ToCheck:
;;;;good reference web for eamcs init.el setting
;;;; https://juanjoalvarez.net/posts/2014/vim-emacsevil-chaotic-migration-guide/

;; reference about the org http://doc.norang.ca/org-mode.html
;;start of org setting--------------------------------------------------
;;;;goog reference https://hugocisneros.com/org-config/#setting-up-todo-keywords
(setq org-todo-keywords
    (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
            (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))
;;“TODO” faces and export settings
(setq org-todo-keyword-faces
    (quote (("TODO" :foreground "red" :weight bold)
            ("NEXT" :foreground "blue" :weight bold)
            ("DONE" :foreground "forest green" :weight bold)
            ("WAITING" :foreground "orange" :weight bold)
            ("HOLD" :foreground "magenta" :weight bold)
            ("CANCELLED" :foreground "forest green" :weight bold)
            ("MEETING" :foreground "forest green" :weight bold)
            ("PHONE" :foreground "forest green" :weight bold))))
(setq-default org-export-with-todo-keywords nil)
(setq-default org-enforce-todo-dependencies t)
;;end of org setting--------------------------------------------------


;;;;ignore the underscore
;;(modify-syntax-entry ?_ "w")
;;;;ignore the underscore in c-mode
;;(add-hook 'c-mode-common-hook (lambda () (modify-syntax-entry ?_ "w")))

;;;;
;;(global-subword-mode 1)

;;TODO enable line highlight
(global-hl-line-mode t)
;;check the color supported
;;M-X list-colors-display
;;(set-face-background 'hl-line "light yellow")
;;(set-face-background 'hl-line "#ffffe0")
;;(set-face-background 'hl-line "#CAFF70")
;;(set-face-background 'hl-line "gray60")
;;(set-face-background 'hl-line "#999999")
;;(set-face-background 'hl-line "gray40")
;;(set-face-background 'hl-line "#666666")
;;(set-face-background 'hl-line "gray20")
(set-face-background 'hl-line "#333333")
;;
;;to keep syntax highlighting in the current line
(set-face-foreground 'highlight nil)
;;(set-face-underline 'hl-line t)
;;(set-face-underline-p 'hl-line t)
;;(set-face-underline-p 'highlight t)
;;(set-face-attribute 'hl-line-face nil :underline t)
(set-face-attribute 'hl-line nil :underline t)
;;M-X list-faces-display
;;(set-face-attribute 'hl-line-face nil :background "light green")
;;(global-hl-line-mode -1)
;;(global-hl-line-mode +1)
;;(hl-line-mode t)
;;
;;TODO hl-file-column
;;cd ~/.emacs.d/site-lisp
;;git clone --recursive https://github.com/laishulu/hl-fill-column.git
(add-to-list 'load-path "~/.emacs.d/site-lisp/hl-fill-column")
;;(load  "~/.emacs.d/site-lisp/hl-fill-column/hl-fill-column.el")
;;(require-init 'hl-fill-column t)
;; load hl-file-column.el
;;(load "hl-fill-column")
;;(require-init 'hl-fill-column t)
;;(require 'hl-fill-column)
;;(hl-fill-column t)
;;(global-hl-fill-column-mode t)
;;
;;set the color of cursor
;;(set-cursor-color "red")
;;(set-cursor-color "purple")
;;(set-cursor-color "yellow")
;;(set-cursor-color "green")
;;(set-cursor-color "#00ff00") ;;green color
;;
;;highlight the location at cursor
;;(setq highlight-symbol-at-point t)

;;

;;M-x package-install RET
;;;;select file-column-indicator
;;worked???
;;(require 'fill-column-indicator)
;;(fci-mode t)

;;;;set default font
;;(h)

;;(seq dispaly-line-number nil)
;;M-x display-line-numbers-mode
;;M-x global-display-line-numbers-mode

;;;;ToCheck:
;;M-x package-install RET
;;select hl-todo
;;;; https://github.com/tarsius/hl-todo
;;;;(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))
;
(add-to-list 'load-path (directory-file-name
                         "~/.emacs.d/elpa/hl-todo-3.1.2/hl-todo-autoloads"))
(setq hl-todo-keyword-faces
  '(("HOLD"    . "#d0bf8f")
    ("TODO"    . "#cc9393")
    ("ToDo"    . "#cc9393")
    ("todo"    . "#cc9393")
    ("fshan"   . "#cc9393")
    ("qshan"   . "#cc9393")
    ("NEXT"    . "#dca3a3")
    ("THEM"    . "#dc8cc3")
    ("PROG"    . "#7cb8bb")
    ("OKAY"    . "#7cb8bb")
    ("DONT"    . "#5f7f5f")
    ;;("FAIL"    . "#8c5353")
    ("FAIL"    . "#ff0000")
    ("error"   . "#ff0000")
    ("Error"   . "#ff0000")
    ("DONE"    . "#afd8af")
    ("NOTE"    . "#d0bf8f")
    ("ToCheck" . "#d0bf8f")
    ("tocheck" . "#d0bf8f")
    ("TOCHECK" . "#d0bf8f")
    ("info"    . "#d0bf8f")
    ("Info"    . "#d0bf8f")
    ("INFO"    . "#d0bf8f")
    ("debug"   . "#d0bf8f")
    ("Debug"   . "#d0bf8f")
    ("DEBUG"   . "#d0bf8f")
    ("KLUDGE"  . "#d0bf8f")
    ("HACK"    . "#d0bf8f")
    ("TEMP"    . "#d0bf8f")
    ("FIXME"   . "#cc9393")
    ("FixMe"   . "#cc9393")
    ("fixme"   . "#cc9393")
    ("XXX+"    . "#cc9393"))
)
;;
;;
(global-hl-todo-mode 1)
;;(hl-todo-insert ("ToDo" . "#cc9393"))
;;;;    ("TODO" . "#cc9393")
;;(hl-todo-mode 1)
;;;;Check here:   todo
;;
;;https://erickgnavar.github.io/emacs-config/#org96c7b43
(defun my/highlight-todo-like-words ()
  (font-lock-add-keywords
   nil `(("\\<\\(fixme\\|toDo\\)"
          1 font-lock-warning-face t))))

(add-hook 'prog-mode-hook 'my/highlight-todo-like-words)
;;
;;--------------------------------------------------
;;;;ToCheck:
;;M-x package-install RET
;;select;; evil-search-highlight-persist
;;??;;(require 'evil-search-highlight-persist)
;;(global-evil-search-highlight-persist t)
;;--------------------------------------------------
;;show match pattern
(show-paren-mode t)
(auto-fill-mode 1)
;;(setq-default auto-fill-function 'do-auto-fill)
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)
;;(setq show-paren-delay 0)
;;
;;(require 'autopair)
;;(autopair-global-mode)
;;--------------------------------------------------
;; {{ @see https://github.com/redguardtoo/evil-matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)
;;--------------------------------------------------
;; do not create backup file
(setq make-backup-files nil)
;;--------------------------------------------------
;;save desktop
;;(desktop-save-mode 0)
(desktop-save-mode 1)
;;;;command to save the current desktop
;;M-x desktop-save
;;;;command to call the previous/saved desktop
;;M-x desktop-read
;;--------------------------------------------------
;;save the cursor position of file when reopen them
(setq save-place-file "~/.emacs.d/mysaveplace")
(setq-default save-place t)
(require 'saveplace)
;;--------------------------------------------------
;;graphical gdb
(setq gdb-many-windows t)
;=======gdb_info start============================================
;; gdb for debug
;;before compile, set the " -g -Wall" for compile argument/flag
;; for 32 bit mode " -m32"
;; for 64 bit mode " -m64"
;;
;;start to debug with gdb/gdb64 with " -tui", like
;; $gdb64 -tui TargetExeProgramNameWithPath
;;
;;after start gdb64, to run the "focus" to open the source code window layout
;; focus    ;;open the source code window, enter or leave TUI mode
;; C-x C-a  ;;open the source code window, enter or leave TUI mode
;; C-x a    ;;open the source code window, enter or leave TUI mode
;; C-x A    ;;open the source code window, enter or leave TUI mode
;; C-x 1    ;;only one window
;; C-x 2    ;;at least window, normally, show the source code window and assembly code window
;; layout asm   ;;open the assembly window
;; layout scr   ;;open the source code window
;; layout regs  ;;open the register window
;;
;; C-x o    ;;change the active window
;; C-x s    ;;switch in and out of the TUI SingleKey mode, in SingleKey mode, step -> s; out of SingleKey mode, step -> s <CR>;
;; C-L      ;;refresh the screen
;;
;; then you could check the source code with every step
;;
;; ----------TUI SingleKye mode start----------
;;
;; Key     function
;;
;; c        continue
;; d        down
;; f        finish
;; n        next
;; o        nexti, Step Over
;; q        exit Single Key mode
;##r        run
;##s        step
;; i        stepi
;; u        up
;; v        info local
;; w        where
;;
;; ----------TUI SingleKye mode end----------
;;
;;======gdb_info end============================================
;;;;	;;
;;(setq-default tab-width 2 indent-tabs-mode nil)
;;(setq-default c-basic-offset 2 c-default-style "bsd")
;;--------------------------------------------------
;;Folding Vs Narrowing
;;define-key for folding here
;;(define-key evil-fold-list "zz" '???)
;;(define-key evil-normal-state-map (kdb "z c" 'evil-close-fold)
;;(define-key evil-normal-state-map (kdb "z C" 'evil-close-folds)
;;
;;use the hideshow to implement the fold function
(setq hs-minor-mode 1)
;; use z c and z a to implement fold
;;reference info here: https://www.emacswiki.org/emacs/HideShow
(add-hook 'c-mode-common-hook     'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook   'hs-minor-mode)
(add-hook 'lisp-mode-hook         'hs-minor-mode)
(add-hook 'perl-mode-hook         'hs-minor-mode)
(add-hook 'python-mode-hook       'hs-minor-mode)
(add-hook 'rust-mode-hook         'hs-minor-mode)
(add-hook 'makefile-mode-hook     'hs-minor-mode)
;;--------------------------------------------------

;; (req-package company
;;   :config
;;   (progn
;;     (add-hook 'after-init-hook 'global-company-mode)
;;     (global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
;;     (setq company-idle-delay 0)
;;   ))
  (add-hook 'after-init-hook 'global-company-mode)
  (global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
  (setq company-idle-delay 0)
;;
;;set for company mode
(with-eval-after-load 'company (company-ctags-auto-setup))
;;
;;##;;removes all the predefined backends at first:
(setf company-backends '())
;;##;;Then get the company-keywrods backend back:
(add-to-list 'company-backends 'company-keywords)
;;##;;Now we can configure irony with company, it’s just two more line of code:
(add-to-list 'company-backends 'company-irony)
(add-to-list 'company-backends 'company-irony-c-headers)
;;##;;You can group the above code into a function and then add it to the c++-mode-hook:
(add-hook 'c++-mode-hook #'(lambda ()
;;	...code here...
  ))
;;##;;
;;   (setq company-ctags-extra-tags-files '("$HOME/TAGS" "/usr/include/TAGS"))
;;--------------------------------------------------
;;set for company mode
;;ToCheck;;;;--------------------------------------------------
;;ToCheck;;;;clear whitespace end of row/line
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)
;;ToCheck;;;;clear blank-line between line and line
;;ToCheck;;(add-hook 'before-save-hook 'delete-blank-lines)
;;ToCheck;;;;--------------------------------------------------
;;
;;
(setq fill-column 80)
;;set limit length
;;(setq whitespace-line-column 80);
(setq whitespace-line-column 120);
(setq whitespace-line-count 120);
;;debug;;(setq whitespace-style '(face lines-tail))
;;TODO;;(add-hook 'prog-mode-hook 'whitespace-mode)
;;--------------------------------------------------
;;create mytab width here
(setq         qshan-tab-width   2)
;;
;;setting for whitespace-mode
(setq         default-tab-width qshan-tab-width)
(setq         tab-width         qshan-tab-width)
(setq-default tab-width         qshan-tab-width)
;;set current buffer's tab width

(setq-default evil-shift-width qshan-tab-width)

;;C-c C-l  ;;disable electric indentation in the current buffer

(setq-default python-offset         qshan-tab-width)
(setq-default python-indent         qshan-tab-width)
(setq-default python-indent-offset  qshan-tab-width)

(setq-default c-basic-offset        qshan-tab-width)
(setq-default c-basic-indent        qshan-tab-width)
(setq-default c-basic-offset        qshan-tab-width c-default-style "linux")
;;(setq-default tab-width 2 indent-tabs-mode nil)
;;(setq-default c-basic-offset 2 c-default-style "bsd")
(setq-default tab-width qshan-tab-width)
(setq-default tab-always-indent nil)
(setq         tab-always-indent nil)
(setq-default indent-tabs-mode nil)
(setq         indent-tabs-mode nil)
;;(setq-default tab-always-indent t)
;;(setq-default indent-tabs-mode t)
;
;;make return key also do indent locally
(electric-indent-local-mode 1)
;;make return key also do indent globally
(electric-indent-mode 1)

;;check the mode info here
;;/usr/share/emacs/site-lisp/*.el

;;check current major modesto
;;M-: major-mode RET
;;(setq auto-mode-alist (append '(("*_emacs\\.emacs\\'" . emacs-lisp-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(
                                ("\\.emacs\\'"  . emacs-lisp-mode)
                                ("_emacs.*\\'"  . emacs-lisp-mode)
                                ("_emacs.*'"    . emacs-lisp-mode)
                                ("\\.get\\'"    . shell-mode)
                                ("*.min'"       . makefile-mode)
                                ("\\.min\\'"    . makefile-mode)
                                ("makefile*'"   . makefile-mode)
                                ("Makefile*'"   . makefile-mode)
                                ("SConstruct*'" . scons-mode)
                                ("SConscript*'" . scons-mode)
                                ("\\.c\\'"      . c-mode)
                                ("\\.cc\\'"     . c-mode)
                                ("\\.cpp\\'"    . c-mode)
                                ("\\.h\\'"      . c-mode)
                                ("\\.hh\\'"     . c-mode)
                                ("\\.py\\'"     . python-mode)
                                ("\\.sm\\'"     . ruby-mode)
                                ) auto-mode-alist))

;;rainbow display mode
(rainbow-delimiters-mode t)

;;;###autoload
;;(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  indent-tabs-mode nil)
            ))

(add-hook 'makefile-mode-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  indent-tabs-mode t)
            ))

(add-hook 'c-mode-common-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  ;;c-tab-always-indent t
                  c-tab-always-indent nil
                  c-indent-level 2
                  indent-tabs-mode nil)
            ))

(add-hook 'c-mode-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  indent-tabs-mode nil)
            ))

(add-hook 'cc-mode-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  indent-tabs-mode nil)
            ))

;;disable the indent based on the c syntax
(add-to-list 'c-mode-common-hook
             (lambda ()
               (setq c-syntactic-indentation nil)
               )
             )

(add-hook 'prog-mode-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  indent-tabs-mode nil)
            ))

(add-hook 'python-mode-hook
          (lambda ()
            (setq tag-width qshan-tab-width
                  indent-tabs-mode nil)
            ))

;;(require-init 'init-flymake t)
;;ToCheck;;(add-hook 'find-file-hook 'flymake-find-file-hook)
;;(setq-default flymake-start-syntax-check-on-newline t)
;;(setq flymake-start-syntax-check-on-newline t)
;;(setq flymake-no-changes-timeout t)
;;(setq flymake-start-syntax-check t)

;; (add-to-list 'package-archives
;;         '("popkit" . "http://elpa.popkit.org/packages/"))

;;set alignment
;;select the word you want to edit firstly
;;M-x align-regexp RET = RET

;;(hook 'c-mode-common-hook (lambda () (setq indent-tabs-mode t)))
;;--------------------------------------------------
;;
;;it is better to end the setting here
;;##############################################################################
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;--------------------------------------------------
;;--------------------------------------------------
;;defun personal env setting here
;;to_check_underscore_motion_setting
;;to-check-middlescore-motion-setting
;;ToCheckCamelCasenCodeStyle
;;;;
(defun fshan-subword-mode ()
  "set submod and ignore '-' and '_' for word constitunt qshan"
  (interactive)
  ;;
  ;;disable subwork-mode to ingnore CamelCaseNaming
  (subword-mode -1)
  ;;(when (not subword-mode) (subword-mode 1))
  ;;(capitalized-words-mode 1)
  ;;(subword-mode 1)
  ;;(add-hook 'c-mode-common-hook (lambda () (subword-mode 1)))
  (modify-syntax-entry ?_ "w")  ;;now '_' is not considered a word-delimiter
  ;;(modify-syntax-entry ?_ "w" (standard-syntax-table))
  (modify-syntax-entry ?- "w")  ;;now '-' is not considered a word-delimiter
  ;;(modify-syntax-entry ?- "w" (standard-syntax-table))
;;;;;;ignore the underscore in c-mode
;;(add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))
;;(add-hook 'python-mode-hook   #'(lambda () (modify-syntax-entry ?_ "w")))
;;;;eval-buffer
;;;;load-file ~/.emacs
  ;;;;(global-superword-mode nil)
  ;;(global-superword-mode 0)
  ;;(global-subword-mode 1)
  ;;(setq global-subword-mode t)
  ;;(superword-mode -1)
  ;;(superword-mode 0)
  ;;(subword-mode 1)
  ;;(subword-mode +1)
  ;;(setq subword-mode t)
  ;;;; enable just in ruby-mode
  ;;(add-hook 'ruby-mode-hook 'subword-mode)
  ;;(add-hook 'c-mode-common-hook 'subword-mode)
  ;;(add-hook 'python-mode-hook  'subword-mode)
  ;; enable for all programming modes
  ;;(add-hook 'prog-mode-hook 'subword-mode)
;;
  (setq default-tab-width 2)
  ;;(setq-default tab-width 2)
  ;;set current buffer's tab width
  (setq tab-width 2)
;;
  (fshan-reset-whitespace-display-mapping)

  ;;(setq whitespace-style '(face tabs))
  ;;(setq tab-face (make-face 'tab-face))
  ;;(set-face-background 'tab-face "red")
  ;;(setq whitespace-tab 'tab-face)

  ;;(setq whitespace-style '(face space))
  ;;(setq space-face (make-face 'space-face))
  ;;;;(set-face-background 'space-face "yellow")
  ;;(set-face-background 'space-face "gray20")
  ;;(setq whitespace-space 'space-face)

  ;;toggle on/off for current file
  ;;(whitespace-mode)
  ;;toggle on/off globally in very buffer for current emacs session
  (global-whitespace-mode t)
  ;;toggle on/off for current file
  ;;(whitespace-newline-mode)
  ;;toggle on/off globally in very buffer for current emacs session
  (global-whitespace-newline-mode t)

;;
(setq fill-column 80)
;;set limit length
;;(setq whitespace-line-column 80);
(setq whitespace-line-column 120);
(setq whitespace-line-count 120);
(setq whitespace-style '(face lines-tail))
;;
(add-hook 'prog-mode-hook 'whitespace-mode)
  ;;show white space
;;  (whitespace-mode)
  ;;(global-whitespace-mode)
  ;;(whitespace-mode t)
  ;;

;;ToCheck;;(fshan-flymake-setting)

  (fshan-flycheck-init)

;;
) ;;end of fshan-subword-mode
;;(require 'my-subword-mode)
;;--------------------------------------------------
(defun fshan-flycheck-init ()

;;  (Require 'Package)
;;  (Add-To-List 'Package-Archives
;;               '("Melpa Stable" . "Http://Stable.Melpa.Org/Packages/") T)
;;  (Package-Initialize)
;;  (Package-Refresh-Contents)

;;  (package-install 'flycheck)

;;  (global-flycheck-mode)

  ;;M-x package-install RET flycheck

  (use-package flycheck
    :ensure t
    :init (global-flycheck-mode))

  (use-package flycheck
     :defer t
     :hoook (prog-mode . global-flycheck-mode)
  )

  (add-hook 'after-init-hook 'global-flycheck-mode)

  (global-flycheck-mode t)

) ;;end of defun fshan-flycheck-init ()
;;--------------------------------------------------
(defun fshan-flycheck-enable ()
  (interactive)

  ;;(add-hook 'after-init-hook #'global-flycheck-mode)

  ;; (setq global-flycheck-mode t)
  ;; (setq flycheck-mode t)

  (global-flycheck-mode)
  ;;(flycheck-mode)
  (list
    'an-info-here
    'a-warning-here
    'an-error-here
  )
------------------------------
  //set error info style
  ;;(setq flycheck-highlighting-mode nil)
  (setq flycheck-highlighting-mode lines)
  ;; (setq flycheck-highlighting-mode columns)
  ;; (setq flycheck-highlighting-mode symbols)
  ;; (setq flycheck-highlighting-mode sexps)
  ;;
  ;;(setq flycheck-highlighting-style nil)
  (setq flycheck-highlighting-style level-face)
  defface flycheck-fringe-error
  defface flycheck-fringe-warning
  defface flycheck-fringe-info

  ;;Check automatically
  (setq flycheck-check-syntax-automatically '(mode-enabled save))

  ;;Check manually
  ;;You can also start a syntax check explicitly with C-c ! c:
  ;;C-c ! c¶
  ;;M-x flycheck-buffer
  ;;ToCheck;;(flycheck-buffer)
  ;;Check syntax in the current buffer.

) ;; end of defun fshan-flycheck-enable ()
;;--------------------------------------------------
(defun fshan-flymake-setting ()
  ;;ToCheck;;enable interactive;;(interactive)
  ;;ToCheck;;(require-init 'init-flymake t)

  ;;(require-init 'init-flymake t)
  (add-hook 'find-file-hook 'flymake-find-file-hook)
  (setq flymake-start-syntax-check t)
  ;;(setq-default flymake-start-syntax-check-on-newline t)
  (setq flymake-start-syntax-check-on-newline t)
  (setq flymake-no-changes-timeout t)
;;
;;----------Queued syntax checks
;; run 8 checks at once instead.
(setq flymake-max-parallel-syntax-checks 8)
;; no max limits.
;;(setq flymake-max-parallel-syntax-checks nil)
;;
;;----------Use the system temporary directory for temp files
;; set the  flymake check copies in the same dir as the original.
(setq flymake-run-in-place t)
;;;; set the flymake check copies in the system temp dir.
;;(setq flymake-run-in-place nil)
;;;; set the  flymake check copies in specific dir.
;;(setq temporary-file-directory "~/.emacs.d/tmp/")
;;
;;----------Show multiple errors in tooltips
;; I want to see at most the first 4 errors for a line.
(setq flymake-number-of-errors-to-display 4)
;;;; I want to see all errors for the line.
;;(setq flymake-number-of-errors-to-display nil)
;;
;;----------start flymake
(setq flymake-mode t)
(setq flymake-start-on-flymake-mode t)
;;(setq flymake-start-on-flymake-mode nil)

) ;;end of defun fshan-flymake-setting ()
;;--------------------------------------------------

(defun fshan-reset-whitespace-display-mapping ()
  (interactive)

  (subword-mode -1)

  ;;toggle on/off for current file
  ;;(whitespace-mode)
  ;;toggle on/off globally for current emacs session
  (global-whitespace-mode)

  ;;toggle on/off for current file
  ;;(whitespace-newline-mode)
  ;;toggle on/off globally for current emacs session
  (global-whitespace-newline-mode)

  ;;Code-characters table http://rmhh.co.uk/ascii.html

  ;;set the background of space
  (setq whitespace-style '(face space))
  (setq space-face (make-face 'space-face))
  ;;(set-face-background 'space-face "red")
  ;;(set-face-background 'space-face "yellow")
  ;;(set-face-background 'space-face "DimGray")
  ;;(set-face-background 'space-face "gray40")
  ;;ToCheck;;mask_space_background_highlight;;(set-face-background 'space-face "gray30")
  (setq whitespace-space 'space-face)

  ;;set whitespace mapping table
  (setq whitespace-display-mappings '(
        ;;(space-mark    ?\    [?\u00B7]    [?.])  ;;space
        (space-mark    ?\     [?\xB7]      [?.])  ;;space displayed as a centered dot
        ;;worked;;(space-mark    ?\     [?\xB7 ?\ ]      [?. ?\ ])  ;;space displayed as a centered dot
        ;;(space-mark    ?\     [?\ ]      [?.])  ;;space displayed as a space
        ;;(space-mark    ?\     [?\u02fd]      [?.])  ;;space
        ;;(space-mark    ?\     [?\u2423]      [?.])  ;;space
        ;;(space-mark    ?\xA0 [?\u00A4]    [?_])  ;;hard space
        ;;(space-mark    ?\xA0  [?\xA4]      [?_])  ;;hard space
        ;;(newline-mark  ?\n   [? \?\n])           ;;end of line
        ;;(newline-mark  ?\n    [?\xB6 ?n]   [?$ ?\n])   ;;end of line
        ;;(newline-mark ?\n    [?$ ?\n])	; end of line - dollar sign
        ;; (newline-mark ?\n    [?\u21B5 ?\n] [?$ ?\n])	; eol - downwards arrow
        (newline-mark ?\n    [9166 ?\n] [?$ ?\n])	; eol - downwards arrow (preferred)
        ;;;; (newline-mark ?\n    [?\u00B6 ?\n] [?$ ?\n]) ; eol - pilcrow
        ;;;; (newline-mark ?\n    [?\x8AF ?\n]  [?$ ?\n]) ; eol - overscore
        ;;;; (newline-mark ?\n    [?\x8AC ?\n]  [?$ ?\n]) ; eol - negation
        ;;;; (newline-mark ?\n    [?\x8B0 ?\n]  [?$ ?\n]) ; eol - grade
        ;;(tab-mark      ?\t   [?\u00BB ?\t] [?\\ ?\t])
        (tab-mark      ?\t   [?\xBB ?\t] [?\\ ?\t]) ;;»
        ;;(tab-mark      ?\t   [?\x1D ?\t] [?\\ ?\t]) ;;<->
                                      ))
  ;;(whitespace-mode)
  (global-whitespace-mode)

  ;;(whitespace-newline-mode)
  (global-whitespace-newline-mode)
)

(defun fshan-reset-whitespace-display-mapping01 ()
  (interactive)

  (subword-mode -1)

  ;;(whitespace-mode)
  (global-whitespace-mode nil)
  ;;(whitespace-newline-mode)
  (global-whitespace-newline-mode nil)

;;
  ;;set whitespace mappling table
  (setq whitespace-display-mappings '(
        ;;;;(space-mark    ?\    [?\u00B7]    [?.])  ;;space
        ;;(space-mark    ?\     [?\xB7]      [?.])  ;;space
        ;;;;(space-mark    ?\xA0 [?\u00A4]    [?_])  ;;hard space
        ;;(space-mark    ?\xA0  [?\xA4]      [?_])  ;;hard space
        ;;;;;;(newline-mark  ?\n   [? \?\n])           ;;end of line
        ;;(newline-mark  ?\n    [?\xB6 ?n]   [?$ ?\n])   ;;end of line
        ;;;;(tab-mark      ?\t   [?\u00BB ?\t] [?\\ ?\t])
        ;;;;;;(space-mark   ?\     [?\u00B7]     [?.]) ; space - centered dot
        ;;;;;;(space-mark   ?\xA0  [?\u00A4]     [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\x8A0 [?\x8A4]      [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\x920 [?\x924]      [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\xE20 [?\xE24]      [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\xF20 [?\xF24]      [?_]) ; hard space - currency
        ;;;; NEWLINE is displayed using the face `whitespace-newline'
        ;;(newline-mark ?\n    [?$ ?\n])  ; eol - dollar sign
        ;;;; (newline-mark ?\n    [?\u21B5 ?\n] [?$ ?\n]) ; eol - downwards arrow
        ;;;; (newline-mark ?\n    [?\u00B6 ?\n] [?$ ?\n]) ; eol - pilcrow
        ;;;; (newline-mark ?\n    [?\x8AF ?\n]  [?$ ?\n]) ; eol - overscore
        ;;;; (newline-mark ?\n    [?\x8AC ?\n]  [?$ ?\n]) ; eol - negation
        ;;;; (newline-mark ?\n    [?\x8B0 ?\n]  [?$ ?\n]) ; eol - grade
        ;;;;
        ;;;; WARNING: the mapping below has a problem.
        ;;;; When a TAB occupies exactly one column, it will display the
        ;;;; character ?\xBB at that column followed by a TAB which goes to
        ;;;; the next TAB column.
        ;;;; If this is a problem for you, please, comment the line below.
        ;;;;(tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t]) ; tab - left quote mark
        ;;(tab-mark     ?\t    [?\xBB ?\t] [?\\ ?\t]) ; tab - left quote mark

        ;; good web https://www.emacswiki.org/emacs/whitespace.el
        ;; (newline-mark ?\n    [?$ ?\n])	; eol - dollar sign
        (space-mark   ?\     [?\u00B7]     [?.]) ; space - centered dolar
        ;;;;;;(space-mark   ?\xA0  [?\u00A4]     [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\x8A0 [?\x8A4]      [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\x920 [?\x924]      [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\xE20 [?\xE24]      [?_]) ; hard space - currency
        ;;;;;;(space-mark   ?\xF20 [?\xF24]      [?_]) ; hard space - currency
        ;; NEWLINE is displayed using the face `whitespace-newline'
        (newline-mark ?\n    [?$ ?\n])	; eol - dollar sign
        ;; (newline-mark ?\n    [?\u21B5 ?\n] [?$ ?\n])	; eol - downwards arrow
        ;; (newline-mark ?\n    [9166 ?\n] [?$ ?\n])	; eol - downwards arrow 01
        ;; (newline-mark ?\n    [?\u00B6 ?\n] [?$ ?\n])	; eol - pilcrow
        ;; (newline-mark ?\n    [?\x8AF ?\n]  [?$ ?\n])	; eol - overscore
        ;; (newline-mark ?\n    [?\x8AC ?\n]  [?$ ?\n])	; eol - negation
        ;; (newline-mark ?\n    [?\x8B0 ?\n]  [?$ ?\n])	; eol - grade
        ;;
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark     ?\t    [?\u00BB ?\t] [?\\ ?\t]) ; tab - left quote mark
        ;;(tab-mark      ?\t   [?\x1D ?\t] [?\\ ?\t])
                                      ))

  ;;(whitespace-mode)
  (global-whitespace-mode t)
  ;;(whitespace-newline-mode)
  (global-whitespace-newline-mode t)
)
;;start function of copy_without_selection--------------------------------------------------
;; reference linker: https://www.emacswiki.org/emacs/CopyWithoutSelection
;;--------------------------------------------------
;;the base functions
(defun get-point (symbol &optional arg)
  "get the point"
  (funcall symbol arg)
  (point))

(defun copy-thing (begin-of-thing end-of-thing &optional arg)
  "Copy thing between beg & end into kill ring."
  (save-excursion
    (let ((beg (get-point begin-of-thing 1))
          (end (get-point end-of-thing arg)))
      (copy-region-as-kill beg end))))

(defun paste-to-mark (&optional arg)
  "Paste things to mark, or to the prompt in shell-mode."
  (unless (eq arg 1)
    (if (string= "shell-mode" major-mode)
        (comint-next-prompt 25535)
      (goto-char (mark)))
    (yank)))
;;--------------------------------------------------
;;Copy Word
(defun copy-word (&optional arg)
 "Copy words at point into kill-ring"
  (interactive "P")
  (copy-thing 'backward-word 'forward-word arg)
  ;;(paste-to-mark arg)
)
;;ToCheck;;
(global-set-key (kbd "C-c w")         (quote copy-word))
;;--------------------------------------------------
;;Copy backward word
(defun copy-backward-word ()
 "copy word before point - rocky @ stackexchange"
  (interactive "")
  (save-excursion
   (let ((end (point))
     (beg (get-point 'backward-word 1)))
     (copy-region-as-kill beg end))))
;;ToCheck;;
(global-set-key (kbd "C-c W") 'copy-backward-word)
;;--------------------------------------------------
;;Copy Line
(defun copy-line (&optional arg)
 "Save current line into Kill-Ring without mark the line "
  (interactive "P")
  (copy-thing 'beginning-of-line 'end-of-line arg)
  (paste-to-mark arg)
)
;;ToCheck;;
(global-set-key (kbd "C-c l")         (quote copy-line))
;;--------------------------------------------------
;;Copy Paragraph
(defun copy-paragraph (&optional arg)
 "Copy paragraphes at point"
  (interactive "P")
  (copy-thing 'backward-paragraph 'forward-paragraph arg)
  (paste-to-mark arg)
)

;;ToCheck;;
(global-set-key (kbd "C-c p")         (quote copy-paragraph))
;;--------------------------------------------------
;;Copy String
(defun beginning-of-string (&optional arg)
  (when (re-search-backward "[ \t]" (line-beginning-position) :noerror 1)
    (forward-char 1)))

(defun end-of-string (&optional arg)
  (when (re-search-forward "[ \t]" (line-end-position) :noerror arg)
    (backward-char 1)))

(defun thing-copy-string-to-mark(&optional arg)
  " Try to copy a string and paste it to the mark
When used in shell-mode, it will paste string on shell prompt by default "
  (interactive "P")
  (copy-thing 'beginning-of-string 'end-of-string arg)
  (paste-to-mark arg)
)
;;ToCheck;;
(global-set-key (kbd "C-c s")         (quote thing-copy-string-to-mark))
;;--------------------------------------------------
;;Copy Parenthesis
(defun beginning-of-parenthesis (&optional arg)
  (when (re-search-backward "[[<(?\"]" (line-beginning-position) :noerror)
    (forward-char 1)))

(defun end-of-parenthesis (&optional arg)
  (when (re-search-forward "[]>)?\"]" (line-end-position) :noerror arg)
    (backward-char 1)))

(defun thing-copy-parenthesis-to-mark (&optional arg)
  " Try to copy a parenthesis and paste it to the mark
When used in shell-mode, it will paste parenthesis on shell prompt by default "
  (interactive "P")
  (copy-thing 'beginning-of-parenthesis 'end-of-parenthesis arg)
  (paste-to-mark arg)
)
;;ToCheck;;
(global-set-key (kbd "C-c a")         (quote thing-copy-parenthesis-to-mark))
;;--------------------------------------------------
;;
;;end function of copy_without_selection--------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;open emacs with miximized windows
;;emacs -mm
;;emacs --miximized
                                        ;
;;check variable in emacs envelop
;;C-h v NameOfVariable RET
;;M-x describe-variable
;;;;or
;; M-: NameOfVariable RET
                                        ;
;;set the variable
                                        ;M-x set-variable RET NameOfVariable RET 80 RET
                                        ;                                        ;
;;set the NameOfVariable after checking
;;(setq NameOfVariable ValueSet)
                                        ;
                                        ;M-x set-variable RET fill-column RET 80 RET
                                        ;(setq fill-column 85)
                                        ;
;;Univeral ctags
;;;;https://github.com/universal-ctags
;;;;https://github.com/universal-ctags/ctags-win32/releases
;;;;https://ctags.io/
;;;;https://docs.ctags.io/en/latest/man-pages.html
;;
;;install universal ctags with following script
;;the details could be get here,
;;https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst

;;    $ git clone https://github.com/universal-ctags/ctags.git
;;    $ cd ctags
;;    $ ./autogen.sh
;;    $ #./configure --prefix=/where/you/want # defaults to /usr/local
;;    $ make
;;    $ make install #may require extra privileges depending on where to install
;;
;;set tags for emacs
;;1.TODO generate the TAGS for Emacs
;;find SearchPathName -name "*.[chCH]" -print | etags -
;;find SearchPathName -name "*.[chCH]"  | xargs ctags
;;ctags -e -R --c++-kinds=+px --fields=+iaS --extra=+qf SearchPathName
;;
;;2.TODO;open/set TAGS file for current emancs env
;;M-x visit-tags-table RETURN
;;then select the TAGS file for project, and TAGS setting work now
;;
;;or TODO
;;set the TAGS for emacs env in the emcas init file, like in ~/.emacs or init.el
;;  (setq tags-table-list '("TagsFilePath/TAGS"))
;;for example, (setq tags-table-list '("~/data/work/c-demo-project-tuhdo/TAGS"))
;;
;;set tags variable for Emacs env
;;  (setq tags-file-name '("~/data/work/c-demo-project-tuhdo/TAGS"))
;;
;;3. others. reset the emacs tag file
;;M-x tags-reset-tags-tables
;;
;;M-x list-tags
;;C-]                           ;M-x counsel-etags-find-tag-at-point  ; jump to the function definition on evil mode
;;C-o                           ;M-x evil-jump-back                   ; return back on evil mode
;;M-.                           ;M-x xref-find-definitions            ;search/jump to the function definition
;;M-,                           ;M-x xref-pop-marker-stack            ;jump back
;;C-u M-.                       ;search next function name
;;M-*                           ;return the location of last searching tag
;;C-M-.                         ;search the function definition with FunctionName
;;
;;M-x find-tag                  ;;find tag with input keywords
;;
;;M-x tags-query-replace
;;C-u M-x tags-query-replace
;;search function name in the tags-table-list
;;M-.: FunctionName
;;complete the function name
;;C-n
;;
;;set for company mode
;;  (with-eval-after-load 'company (company-ctags-auto-setup))

;;   (setq company-ctags-extra-tags-files '("$HOME/TAGS" "/usr/include/TAGS"))
;;
;;General completion set with company mode for Global gtags
;;after install Global gtags, and add those setting in emacs init file
;;(require 'company)
;;(add-hook 'after-init-hook 'global-company-mode)

;;;;;;useful .el info
;;functions-args.el
;;;;GNU Emacs package for showing an inline arguments hint
;;;;for the C/C++ function at point.
;;https://github.com/abo-abo/function-args

;;;;;config the theme with color-theme
;;(load-file "~/.emacs.d/elpa/color-theme-20190220.1115/themes/color-theme-library.el")
;;;;;to add load-path plus requrie are same as the load-file directly
;;;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-20190220.1115/themes")
;;;(require 'color-theme)
;;
;;(color-theme-initialize)
;;;(color-theme-robin-hood)
;;;(color-theme-taylor)
;;(color-theme-gnome2)
;;tango-2

;;flycheck.el
;;Flycheck is a modern on-the-fly syntax checking extension for GNU Emacs,
;;intended as replacement for the older Flymake extension which is part of GNU Emac
;;;;https://www.flycheck.org/en/latest/
;;;;add those info into init el file after install with MELPA to enable the flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)

;;
;;re-read the file using the correct coding system
;;C-x RET r (revert-buffer-with-coding-system)
                                        ;
;;C-\ Enable or disable use of the selected input method (toggle-input-method).
;;M-x load-theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;Enable installation of packages from MELPA by adding an entry to
;;;;;package-archives after (require 'package) and before the call to
;;;;;package-initialize in your init.el or .emacs file:

;;;;;add package-initialize in your init.el or .emacs file
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;;;; Comment/uncomment this line to enable MELPA Stable if desired.
;;See `package-archive-priorities` and `package-pinned-packages`.
;;Most users will not need or want to do this.

;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(package-initialize)
;;;;;Note that you'll need to run
;;M-x package-refresh-contents
;;;;;TODO;or update the mepla database
;;M-x package-list-packages
;;;;;to ensure that Emacs has fetched the MELPA package list before
;;you can install packages with
;;M-x package-install
;;;;;or similar.
;;;;;To use the stable package repository instead of the default “bleeding-edge” repository, use this instead of "melpa":
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
;;;;;--------------------------------------------------
;;;;;It’s defined in lisp/init-evil.el. Press C-z to switch between Emacs and Vim key bindings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;install org-mode
;;;;;Using Emacs packaging system. You can install Org from the “package menu”, with
;;M-x list-packages
;;;;;Downloading Org as an archive. You can download Org latest release from Org’s website,
;;            and then set the load path in your emcas init files, like .emacs or init.el

;;(add-to-list 'load-path "~/path/to/orgdir/lisp")
;;(add-to-list 'load-path "~/path/to/orgdir/contrib/lisp" t)
;;;;;Using Org’s git repository. download the src, and compile and install
;;$ cd ~/src/
;;$ git clone https://code.orgmode.org/bzg/org-mode.git
;;$ cd org-mode/
;;$ make autoloads
;;$ make doc
;;$ make install

;;;;;For a better experience, the three Org commands org-store-link, org-capture and org-agenda
;;  ought to be accessible anywhere in Emacs, not just in Org buffers. To that effect, you need
;;  to bind them to globally available keys, like the ones reserved for users (see (elisp)Key
;;  Binding Conventions). Here are suggested bindings, please modify the keys to your own liking.

;;(global-set-key (kbd "C-c l") 'org-store-link)
;;(global-set-key (kbd "C-c a") 'org-agenda)
;;(global-set-key (kbd "C-c c") 'org-capture)
;;;;;Files with the ‘.org’ extension use Org mode by default. To turn on Org mode in a file that
;;    does not have the extension ‘.org’, make the first line of a file look like this:

;;MY PROJECTS    -*- mode: org; -*-
;;;;;which selects Org mode for this buffer no matter what the file’s name is. See also the
;;    variable org-insert-mode-line-in-empty-file.

;;;;;Headlines define the structure of an outline tree. Org headlines start on the left margin3
;;    with one or more stars followed by a space. For example:

;;C-RET ;(org-insert-heading-after-content)
;;M-RET ;(org-insert-heading-respect-content)
;;C-c * ;(org-insert-heading);turn item/line into headline
;;M-LEFT/RIGHT    ;promote/demote heading
;;C-TAB ;(org-shifttab)
;;TAB ;(org-cycle)
;;* Top level headline
;;** Second level
;;*** Third level
;;    some text
;;*** Third level
;;    more text
;;* Another top level headline
;;M-x org-indent-mode RET;turn on/off the indent mode
;;;;; or add this info in the head of file
;;#+STARTUP: indent
;;;;; or add this info in config file,like .emacs
;;(setq org-starup-indented t)

;;C-c C-l ; (org-insert-link) ;insert a link (TAB completes stored link)
;;C-c C-l ; (org-insert-link) ; edit link at point, same as the insert a link

;;;;;TODO item
;;C-c C-t (org-todo) ;rotate the state of the current item
;;S-RIGHT
;;S-LEFT

;;;;;Using TODO types, it would be set up like this:
;;(setq org-todo-keywords '((type "Fred" "Sara" "Lucy" "|" "DONE")))

;;;;;Multiple keyword sets in one file. Sometimes you may want to use different sets of TODO keywords in parallel. For example, you may want to have the basic TODO/DONE, but also a workflow for bug fixing, and a separate state indicating that an item has been canceled—so it is not DONE, but also does not require action. Your setup would then look like this:
;;(setq org-todo-keywords
;;      '((sequence "TODO" "|" "DONE")
;;        (sequence "REPORT" "BUG" "KNOWNCAUSE" "|" "FIXED")
;;        (sequence "|" "CANCELED")))

;;;;;Fast access to TODO states. If you would like to quickly change an entry to an arbitrary TODO state instead of cycling through the states, you can set up keys for single-letter access to the states. This is done by adding the selection character after each keyword, in parentheses38. For example:
;;(setq org-todo-keywords
;;      '((sequence "TODO(t)" "|" "DONE(d)")
;;        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;        (sequence "|" "CANCELED(c)")))

;;;;;Per-file keywords. Setting up keywords for individual files
;;;;;It can be very useful to use different aspects of the TODO mechanism in different files. For file-local settings, you need to add special lines to the file which set the keywords and interpretation for that file only.
;;;;;For example, to set one of the two examples discussed above, you need one of the following lines, starting in column zero anywhere in the file:
;;#+TODO: TODO FEEDBACK VERIFY | DONE CANCELED
;;;;;You may also write ‘#+SEQ_TODO’ to be explicit about the interpretation, but it means the same as ‘#+TODO’, or
;;#+TYP_TODO: Fred Sara Lucy Mike | DONE
;;;;;A setup for using several sets in parallel would be:
;;#+TODO: TODO | DONE
;;#+TODO: REPORT BUG KNOWNCAUSE | FIXED
;;#+TODO: | CANCELED
;;;;;To make sure you are using the correct keyword, type ‘#+’ into the buffer and then use
;;  M-TAB to complete it (see Completion).

;;;;;Remember that the keywords after the vertical bar—or the last keyword if no bar is
;;there—must always mean that the item is DONE, although you may use a different word. After
;;changing one of these lines, use C-c C-c with point still in the line to make the changes known to Org mode40.

;;;;;Faces for TODO keywords. Org mode highlights TODO keywords with special faces: org-todo
;;for keywords indicating that an item still has to be acted upon, and org-done for keywords
;;indicating that an item is finished. If you are using more than two different states, you
;;might want to use special faces for some of them. This can be done using the variable
;;org-todo-keyword-faces. For example:

;;(setq org-todo-keyword-faces
;;      '(("TODO" . org-warning) ("STARTED" . "yellow")
;;        ("CANCELED" . (:foreground "blue" :weight bold))))
;;;;;While using a list with face properties as shown for ‘CANCELED’ should work, this does not
;;always seem to be the case. If necessary, define a special face and use that. A string is
;;interpreted as a color. The variable org-faces-easy-properties determines if that color is
;;interpreted as a foreground or a background color.

;;;;;TODO keywords as workflow states. You can use TODO keywords to indicate different, possibly
;;sequential states in the process of working on an item, for example:
;;(setq org-todo-keywords
;;      '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
;;;;;or
;;(setq org-todo-keywords
;;'((sequence "TODO(t)" "|" "DONE(d)")
;;        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;        (sequence "|" "CANCELED(c)")))
;;;;;The vertical bar separates the TODO keywords (states that need action) from the DONE states
;;(which need no further action). If you do not provide the separator bar, the last state is used as the DONE state.

;;;;;With this setup, the command C-c C-t cycles an entry from ‘TODO’ to ‘FEEDBACK’, then to ‘VERIFY’,
;;and finally to ‘DONE’ and ‘DELEGATED’. You may also use a numeric prefix argument to quickly select
;;a specific state. For example C-3 C-c C-t changes the state immediately to ‘VERIFY’. Or you can use
;;S-RIGHT and S-LEFT to go forward and backward through the states. If you define many keywords, you
;;can use in-buffer completion (see Completion) or a special one-key selection scheme (see Fast access
;;to TODO states) to insert these words into the buffer. Changing a TODO state can be logged with a
;;timestamp, see Tracking TODO state changes, for more information.

;;;;;Setting Tags. Tags can simply be typed into the buffer at the end of a headline. After a colon,
;;    M-TAB offers completion on tags. There is also a special command for inserting tags:

;;C-c C-q (org-set-tags-command)
;;C-c C-c (org-set-tags-command)

;;;;;Plain Lists
;;;;;Unordered list items start with ‘-’, ‘+’, or ‘*’ as bullets.
;;- Unordered list items
;;+ Unordered list items
;;* Unordered list items
;;;;;Ordered list items start with a numeral followed by either a period or a right parenthesis10,
;;    such as ‘1.’ or ‘1)’11 If you want a list to start with a different value—e.g., 20—start the
;;    text of the item with ‘[@20]’12. Those constructs can be used in any item of the list in order to
;;    enforce a particular numbering.

;;1. ordered list item
;;1) ordered list item
;;;;;Description list items are unordered list items, and contain the separator ‘::’ to distinguish
;;    the description term from the description.

;;;;;formated text with pair of '*', '/', '+' and '_', like this
;; *formated text here*
;; /formated text here/
;; +formated text here+
;; _formated text here_

;;;;;Table edit
;; | Name | Phone | Age | TAB, C-c |; creat the table
;;C-c RET ;add line upper current location
;;C-c - ;add line after current location

;;;;;Timestamps. A timestamp is a specification of a date (possibly with a time or a range of times) in a special format
;;;;;Plain timestamp; Event; Appointment. A simple timestamp just assigns a date/time to an item. This is just like writing down an appointment or event in a paper agenda. In the agenda display, the headline of an entry associated with a plain timestamp is shown exactly on that date.
;;* Meet Peter at the movies
;;  <2006-11-01 Wed 19:15>
;;* Discussion on climate change
;;  <2006-11-02 Thu 20:00-22:00>
;;;;;Timestamp with repeater interval. A timestamp may contain a repeater interval, indicating that it applies not only on the given date, but again and again after a certain interval of N days (d), weeks (w), months (m), or years (y). The following shows up in the agenda every Wednesday:
;;* Pick up Sam at school
;;  <2007-05-16 Wed 12:30 +1w>
;;;;;Diary-style expression entries. For more complex date specifications, Org mode supports using the special expression diary entries implemented in the Emacs Calendar package60. For example, with optional time:
;;* 22:00-23:00 The nerd meeting on every 2nd Thursday of the month
;;  <%%(diary-float t 4 2)>
;;;;;Time/Date range. Two timestamps connected by ‘--’ denote a range. The headline is shown on the first and last day of the range, and on any dates that are displayed and fall in the range. Here is an example:
;;** Meeting in Amsterdam
;;   <2004-08-23 Mon>--<2004-08-26 Thu>
;;;;;Inactive timestamp. Just like a plain timestamp, but with square brackets instead of angular ones. These timestamps are inactive in the sense that they do not trigger an entry to show up in the agenda.
;;* Gillian comes late for the fifth time
;;  [2006-11-01 Wed]

;;;;;Creating Timestamps
;;C-c . (org-time-stamp)
;;C-c ! (org-time-stamp-inactive)
;;C-c C-c
;;C-c < (org-date-from-calendar)
;;C-c > (org-goto-calendar)
;;C-c C-o (org-open-at-point)
;;S-LEFT (org-timestamp-down-day)
;;S-RIGHT (org-timestamp-up-day)
;;S-UP (org-timestamp-up)
;;S-DOWN (org-timestamp-down)
;;C-c C-y (org-evaluate-time-range)








;;;;;To display the buffer in the indented view, activate Org Indent minor mode with:
;;M-x org-indent-mode
;;;;To globally turn on Org Indent mode for all files, customize the variable org-startup-indented. To control it for individual files, use ‘STARTUP’ keyword as follows:
;;#+STARTUP: indent
;;#+STARTUP: noindent
;;;;;It is possible to use hard spaces to achieve the indentation instead, if the bare ASCII file should have the indented look also outside Emacs150. With Org’s support, you have to indent all lines to line up with the outline headers. You would use these settings151:
;;(setq org-adapt-indentation t
;;      org-hide-leading-stars t
;;      org-odd-levels-only t)
;;;;;Hiding leading stars (org-hide-leading-stars). The second setting makes leading stars invisible by applying the face org-hide to them. For per-file preference, use these file ‘STARTUP’ options:
;;#+STARTUP: hidestars
;;#+STARTUP: showstars
;;;;;Odd levels (org-odd-levels-only). The third setting makes Org use only odd levels, 1, 3, 5, …, in the outline to create more indentation. On a per-file level, control this with:
;;#+STARTUP: odd
;;#+STARTUP: oddeven
;;;;;To convert a file between single and double stars layouts, use
;;M-x org-convert-to-odd-levels
;;M-x org-convert-to-oddeven-levels.

;;;;;Global and local cycling
;;TAB
;;S-TAB
;;C-u TAB

;;;;;Initial visibility. When Emacs first visits an Org file, the global state is set to showeverything, i.e., all file content is visible6.
;;;;;This can be configured through the variable org-startup-folded, or on a per-file basis by adding one of the following lines anywhere in the buffer:
;;#+STARTUP: overview
;;#+STARTUP: content
;;#+STARTUP: showall
;;#+STARTUP: showeverything


;;;;;export the text
;;C-c C-e

;;GNU Global gtags
;;;;https://www.gnu.org/software/global/global.html
;;;;http://adoxa.altervista.org/global/
;;;;https://www.gnu.org/software/global/globaldoc_toc.html
;;;;https://tracker.debian.org/pkg/global
;;;;https://github.com/punitagrawal/global
;;;;;;https://www.emacswiki.org/emacs/GnuGlobal
;;;;;;gtags CodeFilePath         ;create tag files for global
;;
;;global gtags file info
;;;;  ´GTAGS´     : Tag file for object definitions.
;;;;  ´GRTAGS´    : Tag file for object references.
;;;;  ´GSYMS´     : Tag file for other symbols.
;;;;  ´GPATH´     : Tag file for path of source files.
;;;;  ´GTAGSROOT´ : If  environment  variable GTAGSROOT is not set and ´GTAGSROOT´ exist in the same directory with ´GTAGS´ then use the value as GTAGSROOT.
;;;;  ´/etc/gtags.conf´, ´$HOME/.globalrc´ : Configuration file.
;;
;;;;;install counsel-gtags for completion. counsel-gtags is available on MELPA and MELPA stable. you could install with
;; M-x package-install RET counsel-gtags RET
;;TODO;generate the TAGS file
;; $ gtags CodeFilePath
;; $ gtags -f CodeFileListName
;; $ gtags [-ciIOqvw][-C dir][-d tag-file][-f file][dbpath]
;;;;https://www.gnu.org/software/global/globaldoc_toc.html#gtags
;;;;;counsel-gtags command part of commands list
;;counsel-gtags-find-definition  ;Search for definition.
;;counsel-gtags-find-reference   ;Search for references.
;;counsel-gtags-find-symbol      ;Search for symbol references.
;;counsel-gtags-find-file        ;Search for file among tagged files.
;;counsel-gtags-go-backward      ;Go to previous position in context stack.
;;counsel-gtags-go-forward       ;Go to next position in context stack.
;;counsel-gtags-create-tags      ;Create GNU GLOBAL tags.
;;counsel-gtags-update-tags      ;Update tags.
;;counsel-gtags-dwim             ;Find name by context.
;;;Jump to tag definition if cursor is on tag reference
;;;Jump to tag reference if cursor is on tag definition
;;;;;Other window commands. There are also the commands:
;;counsel-gtags-find-definition-other-window
;;counsel-gtags-find-reference-other-window
;;counsel-gtags-find-symbol-other-window
;;counsel-gtags-find-file-other-window
;;;;;Similar to the mentioned before with similar names but use other windows instead of the same. This functionality is also available throw ivy-actions in the candidates list pressing M-o j.

;;;;;Ivy is split into three package:ivy, swiper and counsel. by installing counsel, the other two are brought in as dependencies.
;;M-x package-refresh-contents RET
;;M-x counsel-mode ;enable the counsel mode
;;;;;Ivy, a generic completion mechanism for Emacs. Counsel, a collection of Ivy-enhanced version of common Emacs commands. Swiper, an Ivy-enhanced alternative to isearch.
;; M-x ivy-mode ;try Ivy, enable the Ivy completion, including specific completion for file and buffer names
;;;;;ivy-mode ensure that any Emacs command using completing-read-function uses ivy for completion. Counsel takes this further, provioding versions of common Emacs commands that are customised to make the best use of ivy. Enabling counsel-mode remaps built-in Emacs functions that have counsel replacement
;;M-x package-install RET counsel RET ;install counsel from Emacs package manager
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Hotkey info Here;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;~/.emacs.d/init.el

;;C-z         ;to switch between Emacs and Vim key bindings.
;;M-x shell   ;run avaiable shell in emacs window
;;M-!         ;run shell
;;M-x replace-string   ;replace string, like replace ^M with C-j
;;C-x d       ;enter Dired Mode
;;C-x o n     ;switch window to window-n
;;;;C-i       ;evil-jump-forward
;;C-o         ;evil-jump-backward (Evil-mode)
;;gf          ;find-file-at-point (Evil-mode)
;;gd          ;evil-goto-definition (Evil-mode)
;;C-x C-o     ;find-file-at-point
;;;;M-x ffap  ;find-file-at-point
;;C-x C-=     ;increase the font size with Evil-mode
;;C-x C-+     ;increase the font size with Evil-mode
;;C-x C--     ;decrease the font size with Evil-mode
;;;;M-x C-+   ;increase the font size
;;;;M-x C--   ;decrease the font size
;;C-g         ;quit current command
;;
;; comment command here
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Comment-Commands.html
;;M-;         ;comment/uncomment current line or selected part
;;C-x C-;     ;(comment-line) switch between the comment current line and uncomment line
;;C-u M-;     ;kill comment on current line
;;C-C C-c     ;(comment-region) in C-like modes
;;M-x comment-region
;;
;;(toggle-read-only)    ;;force edit the file opened with read only mode
;;C-x C-q     ;;(read-only-mode)      ;;switch read-only-mode between read-only and writable
;;C-x C-q     ;(dired-toggle-read-only) - Makes all file names in the buffer editable directly to rename them!
;;                                        Press Z Z to confirm renaming or Z Q to abort.
;;M-x delete-trailing-whitespace    ;remove the white space at end of line
;;M-x whitespace-cleanup            ;

;;help and get the info with help
;;;;;C-h b    ;M-x describe-bindings ;TODO;list the key binding
;;;;C-h .     ;display-local-help
;;;;C-h RET   ;view-order-manuals display local help
;;;;C-h ?     ;help-for-help
;;;;C-h C-h   ;runs help-for-help. Use this command if you want to see a list of available help commands.
;;            Remember, if you partially remember a key binding, just press as much as you can remember
;;            and then press C-h, Emacs will list available commands for that prefix. Prefix C-h is no exception.
;;            C-h C-h simply returns all key bindings and commands of prefix C-h
;;;;C-h r     ;info-emacs-manual
;;;;C-h t     ;help-with-tutorial to read bundled tutorial.
;;C-h q       ;quit-help
;;
;;;;C-h b     ;M-x describe-bindings  ;ToCheck;list the key binding info
;;C-h c       ;runs describe-key-briefly to find out what command is bound to a key.
;;              For example, after C-h c, run C-x C-f gives you find-files.
;;C-h c       ;describe-key-briefly check the info of input-key
;;C-h f       ;counsel-describe-function ###good###
;;;;C-h k     ;runs describe-key to find out what command is bound to a key,
;;              along with the documentation of the command. Use this if you want to know how to use a command.
;;;;C-h k     ;describe-key, will open describe with a windows
;;;;C-h p     ;finder-by-keywords
;;;;C-h K     ;find-function-on-key, will open the function definition
;;C-h C-f     ;find-function, will open the function definition
;;;;C-h C     ;describe-coding-system
;;;;C-h m     ;runs describe-mode to see all the key bindings and documentation of current major mode
;;              and minor modes of a buffer.
;;;;C-h w     ;runs where-is to get which keystrokes invoke a given command.
;;;;C-h e     ;runs view-echo-area-messages, allow you to see the logging of echo area messages.
;;;;C-h v     ;M-x describe-variable, and asks you for a variable; you can TAB to complete a variable.
;;              This command is important, because aside from describing a variable, it allows you to
;;              customize the behavior of Emacs and 3rd party packages. But for now, you don't need it.

;;re-load the emacs config file with load-file
;;M-x load-file ~/.emacs    ;load .emacs file as Lisp code, and execute
;;M-x eval-buffer           ;use current buffer/file as Lisp code, and execute
;;M-x eval-region           ;use the region selected as Lisp code, and execute
;;M-x eval-last-sexp        ;use the current line as Lisp code, and execute

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C-x d ;enter Dired Mode
;;;;;Dired, File Management. Dired is a built-in file manager for Emacs that does some pretty amazing things!
;;  Here are some key bindings you should try out:

;;;;;Evil Keybindings and other behaviour
;;C-z               ;(evil-toggle-key);The key used to change to and from Emacs state.
;;                                      Must be readable by read-kbd-macro

;;C-x C-0  +/-/0   ;;text-scale-adjust, +: increase   -:decrease
;; C-x d           ;;open the dired buffer, then input the directory info and get the files list info in that folder
;;M-x dired        ;;same as the C-x d
;;
;;;;;Navigation
;;;;;Emacs / Evil
;;n / j            ;- next line
;;p / k            ;- previous line
;;j / J            ;- jump to file in buffer
;;RET              ;- select file or directory
;;^                ;- go to parent directory
;;q                ;(quit-window) in dired-mode-map
;;file buffer operation
;;S-RET / g O      ;- Open file in “other” window
;;M-RET            ;- Show file in other window without focusing (previewing files)
;;g o              ;(dired-view-file) - Open file but in a “preview” mode, close with q
;;g / g r          ;Refresh the buffer with revert-buffer after changing configuration (and after filesystem changes!)
;;;;;Marking files
;;m                ;- Marks a file
;;u                ;- Unmarks a file
;;U                ;- Unmarks all files in buffer
;;* t / t          ;- Inverts marked files in buffer
;;% m              ;- Mark files in buffer using regular expression
;;*                ;- Lots of other auto-marking functions
;;k / K            ;- “Kill” marked items (refresh buffer with g / g r to get them back)
;;;;;Many operations can be done on a single file if there are no active marks!
;;;;;Copying and Renaming files
;;C                ;- Copy marked files (or if no files are marked, the current file)
;;;;;Copying single and multiple files
;;U                ;- Unmark all files in buffer
;;R                ;- Rename marked files, renaming multiple is a move!
;;% R              ;- Rename based on regular expression: ^test , old-\&
;;;;;Power command: C-x C-q (dired-toggle-read-only) - Makes all file names in the buffer editable directly to rename them! Press Z Z to confirm renaming or Z Q to abort.
;;;;;Deleting files
;;D                ;- Delete marked file
;;d                ;- Mark file for deletion
;;x                ;- Execute deletion for marks
;;;;;delete-by-moving-to-trash - Move to trash instead of deleting permanently
;;;;;Creating and extracting archives
;;Z                ;- Compress or uncompress a file or folder to (.tar.gz)
;;c                ;- Compress selection to a specific file
;;;;;dired-compress-files-alist - Bind compression commands to file extension
;;;;;Other common operations
;;T                ;- Touch (change timestamp)
;;M                ;- Change file mode
;;O                ;- Change file owner
;;G                ;- Change file group
;;S                ;- Create a symbolic link to this file
;;L                ;- Load an Emacs Lisp file into Emacs

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;--------------------------------------------------
;;;;;`evil-normal-state-minor-mode' Minor Mode Bindings:
;;key             binding
;;---             -------
                                        ; C-n             evil-paste-pop-next
                                        ; C-p             evil-paste-pop
                                        ; C-r             undo-fu-only-redo
                                        ; C-t             pop-tag-mark
                                        ; ESC             Prefix Command
                                        ; C-]             counsel-etags-find-tag-at-point
                                        ; SPC             Prefix Command
                                        ; "               evil-use-register
                                        ; &               evil-ex-repeat-substitute
                                        ; ,               Prefix Command
                                        ; .               evil-repeat
                                        ; ;               Prefix Command
                                        ; <               evil-shift-left
                                        ; =               evil-indent
                                        ; >               evil-shift-right
                                        ; @               evil-execute-macro
                                        ; A               evil-append-line
                                        ; C               evil-change-line
                                        ; D               evil-delete-line
                                        ; I               evil-insert-line
                                        ; J               evil-join
                                        ; O               evil-open-above
                                        ; P               evil-paste-before
                                        ; R               evil-replace-state
                                        ; S               evil-change-whole-line
                                        ; X               evil-delete-backward-char
                                        ; Y               Keyboard Macro
                                        ; Z               Prefix Command
                                        ; a               evil-append
                                        ; c               evil-change
                                        ; d               evil-delete
                                        ; g               Prefix Command
                                        ; i               evil-insert
                                        ; m               evil-set-marker
                                        ; o               evil-open-below
                                        ; p               evil-paste-after
                                        ; q               evil-record-macro
                                        ; r               evil-replace
                                        ; s               evil-substitute ;replace
                                        ; u               undo-fu-only-undo
                                        ; x               evil-delete-char
                                        ; y               evil-yank
                                        ; z               Prefix Command
                                        ; ~               evil-invert-char
                                        ; DEL             evil-backward-char
                                        ; C-.             evil-repeat-pop
                                        ; <deletechar>    evil-delete-char
                                        ; <escape>        evil-force-normal-state
                                        ; <insert>        evil-insert
                                        ; <insertchar>    evil-insert
                                        ; <mouse-2>       mouse-yank-primary
                                        ; <remap>         Prefix Command

                                        ; ;             ace-pinyin-jump-char-2
                                        ; a             avy-goto-char-timer
                                        ; d             Prefix Command
                                        ; g             Prefix Command
                                        ; m             Prefix Command
                                        ; w             avy-goto-word-or-subword-1
;;--------------------------------------------------
;;;;;`evil-motion-state-minor-mode' Minor Mode Bindings:
;;key             binding
;;---             -------

                                        ; C-b             evil-scroll-page-up
                                        ; C-d             evil-scroll-down
                                        ; C-e             evil-scroll-line-down
                                        ; C-f             evil-scroll-page-down
                                        ; TAB             evil-jump-forward
                                        ; RET             evil-ret
                                        ; C-o             evil-jump-backward
                                        ; C-v             evil-visual-block
                                        ; C-w             evil-window-map
                                        ; C-y             evil-scroll-line-up
                                        ; C-z             evil-emacs-state
                                        ; C-^             evil-buffer
                                        ; !               evil-shell-command
                                        ; #               evil-search-word-backward
                                        ; $               evil-end-of-line
                                        ; '               evil-goto-mark-line
                                        ; (               evil-backward-sentence-begin
                                        ; )               evil-forward-sentence-begin
                                        ; *               evil-search-word-forward
                                        ; +               evil-next-line-first-non-blank
                                        ; -               evil-previous-line-first-non-blank
                                        ; /               evil-search-forward
                                        ; 0               evil-digit-argument-or-evil-beginning-of-line
                                        ; 1 .. 9          digit-argument
                                        ; :               evil-ex
                                        ; ?               evil-search-backward
                                        ; B               evil-backward-WORD-begin
                                        ; E               evil-forward-WORD-end
                                        ; F               evil-find-char-backward
                                        ; G               evil-goto-line
                                        ; H               evil-window-top
                                        ; K               evil-lookup
                                        ; L               evil-window-bottom
                                        ; M               evil-window-middle
                                        ; N               evil-search-previous
                                        ; T               evil-find-char-to-backward
                                        ; V               evil-visual-line
                                        ; W               evil-forward-WORD-begin
                                        ; [               Prefix Command
                                        ; \               evil-execute-in-emacs-state
                                        ; ]               Prefix Command
                                        ; ^               evil-first-non-blank
                                        ; _               evil-next-line-1-first-non-blank
                                        ; `               evil-goto-mark
                                        ; b               evil-backward-word-begin
                                        ; e               evil-forward-word-end
                                        ; f               evil-find-char
                                        ; g               Prefix Command
                                        ; h               evil-backward-char
                                        ; j               evil-next-line
                                        ; k               evil-previous-line
                                        ; l               evil-forward-char
                                        ; n               evil-search-next
                                        ; t               evil-find-char-to
                                        ; v               evil-visual-char
                                        ; w               evil-forward-word-begin
                                        ; z               Prefix Command
                                        ; {               evil-backward-paragraph
                                        ; |               evil-goto-column
                                        ; }               evil-forward-paragraph
                                        ; C-6             evil-switch-to-windows-last-buffer

                                        ; z RET           Keyboard Macro
                                        ; z +             evil-scroll-bottom-line-to-top
                                        ; z -             Keyboard Macro
                                        ; z .             Keyboard Macro
                                        ; z H             evil-scroll-left
                                        ; z L             evil-scroll-right
                                        ; z ^             evil-scroll-top-line-to-bottom
                                        ; z b             evil-scroll-line-to-bottom
                                        ; z h             evil-scroll-column-left
                                        ; z l             evil-scroll-column-right
                                        ; z t             evil-scroll-line-to-top
                                        ; z z             evil-scroll-line-to-center
                                        ; z <left>        Keyboard Macro
                                        ; z <return>      Keyboard Macro
                                        ; z <right>       Keyboard Macro

                                        ; C-w C-b         evil-window-bottom-right
                                        ; C-w C-c         evil-window-delete
                                        ; C-w C-f         ffap-other-window
                                        ; C-w C-n         evil-window-new
                                        ; C-w C-o         delete-other-windows
                                        ; C-w C-p         evil-window-mru
                                        ; C-w C-r         evil-window-rotate-downwards
                                        ; C-w C-s         evil-window-split
                                        ; C-w C-t         evil-window-top-left
                                        ; C-w C-v         evil-window-vsplit
                                        ; C-w C-w         evil-window-next
                                        ; C-w C-_         evil-window-set-height
                                        ; C-w +           evil-window-increase-height
                                        ; C-w -           evil-window-decrease-height
                                        ; C-w <           evil-window-decrease-width
                                        ; C-w =           balance-windows
                                        ; C-w >           evil-window-increase-width
;;;C-w + J        "show window layout vertically
;;;C-w + H        "show window layout horizontally
                                        ; C-w H           evil-window-move-far-left
                                        ; C-w J           evil-window-move-very-bottom
                                        ; C-w K           evil-window-move-very-top
                                        ; C-w L           evil-window-move-far-right
                                        ; C-w R           evil-window-rotate-upwards
                                        ; C-w S           evil-window-split
                                        ; C-w W           evil-window-prev
                                        ; C-w _           evil-window-set-height
                                        ; C-w b           evil-window-bottom-right
                                        ; C-w c           evil-window-delete
                                        ; C-w h           evil-window-left
                                        ; C-w j           evil-window-down
                                        ; C-w k           evil-window-up
                                        ; C-w l           evil-window-right
                                        ; C-w n           evil-window-new
                                        ; C-w o           delete-other-windows
                                        ; C-w p           evil-window-mru
                                        ; C-w q           evil-quit
                                        ; C-w r           evil-window-rotate-downwards
                                        ; C-w s           evil-window-split
                                        ; C-w t           evil-window-top-left
                                        ; C-w v           evil-window-vsplit
                                        ; C-w w           evil-window-next
                                        ; C-w |           evil-window-set-width
                                        ; C-w C-S-h       evil-window-move-far-left
                                        ; C-w C-S-j       evil-window-move-very-bottom
                                        ; C-w C-S-k       evil-window-move-very-top
                                        ; C-w C-S-l       evil-window-move-far-right
                                        ; C-w C-S-r       evil-window-rotate-upwards
                                        ; C-w C-S-s       evil-window-split
                                        ; C-w C-S-w       evil-window-prev

;;remove the trailing whirtespace
;;M-x delete-trailing-whitespace
;;M-x whitesace-cleanup
;;
;;--------------------------------------------------
;;=======dired_info start============================================
;;C-x d             ;;enter dired mode
;;M-x dired         ;;same as the C-x d
;;;;The primary use of Dired is to flag files for deletion and then delete the files previously flagged.
;;d                 ;;Flag this file for deletion.
;;u                 ;;Remove deletion flag on this line.
;;DEL               ;;Move point to previous line and remove the deletion flag on that line.
;;x                 ;;Delete the files that are flagged for deletion.

;;=======dired_info end============================================

;;=======ediff_info start============================================
;;detail info web https://www.gnu.org/software/emacs/manual/html_mono/ediff.html
;;Ediff can be invoked interactively using the following functions, which can be run either from the minibuffer or from the menu bar. In the menu bar, all Ediff’s entry points belong to three submenus of the Tools menu: Compare, Merge, and Apply Patch.
;;
;;ediff-files
;;ediff
;;;;Compare two files.
;;
;;ediff-backup
;;;;Compare a file with its backup. If there are several numerical backups, use the latest. If the file is itself a backup, then compare it with its original.
;;
;;ediff-current-file
;;;;Compare the buffer with its file on disk. This function can be used as a safe version of revert-buffer.
;;
;;ediff-buffers
;;;;[good]Compare two buffers.
;;
;;ediff-files3
;;ediff3
;;Compare three files.
;;
;;ediff-buffers3
;;;;Compare three buffers.
;;
;;edirs
;;ediff-directories
;;;;Compare files common to two directories.
;;
;;edirs3
;;ediff-directories3
;;;;Compare files common to three directories.
;;
;;edir-revisions
;;ediff-directory-revisions
;;;;Compare versions of files in a given directory. Ediff selects only the files that are under version control.
;;
;;edir-merge-revisions
;;ediff-merge-directory-revisions
;;;;Merge versions of files in a given directory. Ediff selects only the files that are under version control.
;;
;;edir-merge-revisions-with-ancestor
;;ediff-merge-directory-revisions-with-ancestor
;;;;Merge versions of files in a given directory using other versions as ancestors. Ediff selects only the files that are under version control.
;;
;;ediff-windows-wordwise
;;;;Compare text visible in 2 windows word-by-word.
;;
;;ediff-windows-linewise
;;;;Compare text visible in 2 windows line-by-line.
;;
;;ediff-regions-wordwise
;;;;Compare regions word-by-word. The regions can come from the same buffer and they can even overlap. You will be asked to specify the buffers that contain the regions, which you want to compare. For each buffer, you will also be asked to mark the regions to be compared. Pay attention to the messages that appear in the minibuffer.
;;
;;ediff-regions-linewise
;;;;Similar to ediff-windows-linewise, but compares the regions line-by-line. See ediff-windows-linewise for more details.
;;
;;ediff-revision
;;;;Compare versions of the current buffer, if the buffer is visiting a file under version control.
;;
;;ediff-patch-file
;;epatch
;;;;Patch a file or multiple files, then compare. If the patch applies to just one file, Ediff will invoke a regular comparison session. If it is a multi-file patch, then a session group interface will be used and the user will be able to patch the files selectively. See Session Groups, for more details.
;;
;;;;Since the patch might be in a buffer or a file, you will be asked which is the case. To avoid this extra prompt, you can invoke this command with a prefix argument. With an odd prefix argument, Ediff assumes the patch is in a file; with an even argument, a buffer is assumed.
;;
;;;;Note that ediff-patch-file will actually use the patch utility to change the original files on disk. This is not that dangerous, since you will always have the original contents of the file saved in another file that has the extension .orig. Furthermore, if the file is under version control, then you can always back out to one of the previous versions (see the section on Version Control in the Emacs manual).
;;
;;;;ediff-patch-file is careful about versions control: if the file to be patched is checked in, then Ediff will offer to check it out, because failing to do so may result in the loss of the changes when the file is checked out the next time.
;;
;;;;If you don’t intend to modify the file via the patch and just want to see what the patch is all about (and decide later), then ediff-patch-buffer might be a better choice.
;;
;;ediff-patch-buffer
;;epatch-buffer
;;;;Patch a buffer, then compare. The buffer being patched and the file visited by that buffer (if any) is not modified. The result of the patch appears in some other buffer that has the name ending with _patched.
;;
;;;;This function would refuse to apply a multifile patch to a buffer. Use ediff-patch-file for that (and when you want the original file to be modified by the patch utility).
;;
;;;;Since the patch might be in a buffer or a file, you will be asked which is the case. To avoid this extra prompt, you can invoke this command with a prefix argument. With an odd prefix argument, Ediff assumes the patch is in a file; with an even argument, a buffer is assumed.
;;
;;ediff-merge-files
;;ediff-merge
;;;;Merge two files.
;;
;;ediff-merge-files-with-ancestor
;;ediff-merge-with-ancestor
;;;;Like ediff-merge, but with a third ancestor file.
;;
;;ediff-merge-buffers
;;;;Merge two buffers.
;;
;;ediff-merge-buffers-with-ancestor
;;;;Same but with ancestor.
;;
;;edirs-merge
;;ediff-merge-directories
;;;;Merge files common to two directories.
;;
;;edirs-merge-with-ancestor
;;ediff-merge-directories-with-ancestor
;;;;Same but using files in a third directory as ancestors. If a pair of files doesn’t have an ancestor in the ancestor-directory, you will still be able to merge them without the ancestor.
;;
;;ediff-merge-revisions
;;;;Merge two versions of the file visited by the current buffer.
;;
;;ediff-merge-revisions-with-ancestor
;;;;Same but with ancestor.
;;
;;ediff-documentation
;;;;Brings up this manual.
;;
;;ediff-show-registry
;;eregistry
;;;;Brings up Ediff session registry. This feature enables you to quickly find and restart active Ediff sessions.
;;
;;
;;ediff edit command
;;3.1 Quick Help Commands
;; ?
;;;;Toggles the Ediff Quick Help window ON and OFF.
;;
;; G
;;;;Prepares a mail buffer for sending a praise or a curse to the Ediff maintainer.
;;
;; E
;;;;Brings up the top node of this manual, where you can find further information on the various Ediff functions and advanced issues, such as customization, session groups, etc.
;;
;; v
;;;;Scrolls up buffers A and B (and buffer C where appropriate) in a coordinated fashion.
;;
;; V
;;;;Scrolls the buffers down.
;;
;; <
;;;;Scrolls the buffers to the left simultaneously.
;;
;; >
;;;;Scrolls buffers to the right.
;;
;; wd
;;;;Saves the output from the diff utility, for further reference.
;;;;With prefix argument, saves the plain output from diff (see ediff-diff-program and ediff-diff-options). Without the argument, it saves customized diff output (see ediff-custom-diff-program and ediff-custom-diff-options), if it is available.
;;
;; wa
;;;;Saves buffer A, if it was modified.
;;
;; wb
;;;;Saves buffer B, if it was modified.
;;
;; wc
;;;;Saves buffer C, if it was modified (if you are in a session that compares three files simultaneously).
;;
;; a
;;;;In comparison sessions: Copies the current difference region (or the region specified as the prefix to this command) from buffer A to buffer B. Ediff saves the old contents of buffer B’s region; it can be restored via the command rb, which see.
;;In merge sessions: Copies the current difference region (or the region specified as the prefix to this command) from buffer A to the merge buffer. The old contents of this region in buffer C can be restored via the command r.
;;
;; b
;;Works similarly, but copies the current difference region from buffer B to buffer A (in comparison sessions) or the merge buffer (in merge sessions).
;;;;Ediff saves the old contents of the difference region copied over; it can be reinstated via the command ra in comparison sessions and r in merge sessions.
;;
;; ab
;;;;Copies the current difference region (or the region specified as the prefix to this command) from buffer A to buffer B. This (and the next five) command is enabled only in sessions that compare three files simultaneously. The old region in buffer B is saved and can be restored via the command rb.
;;
;; ac
;;;;Copies the difference region from buffer A to buffer C. The old region in buffer C is saved and can be restored via the command rc.
;;
;; ba
;;;;Copies the difference region from buffer B to buffer A. The old region in buffer A is saved and can be restored via the command ra.
;;
;; bc
;;;;Copies the difference region from buffer B to buffer C. The command rc undoes this.
;;
;; ca
;;;;Copies the difference region from buffer C to buffer A. The command ra undoes this.
;;
;; cb
;;;;Copies the difference region from buffer C to buffer B. The command rb undoes this.
;;
;; p
;; DEL
;;;;Makes the previous difference region current.
;;
;; n
;; SPC
;;;;Makes the next difference region current.
;;
;; j
;; -j
;; Nj
;;;;Makes the very first difference region current.
;;-j makes the last region current. Typing a number, N, and then j makes the difference region N current. Typing -N (a negative number) then j makes current the region Last - N.
;;
;; ga
;;;;Makes current the difference region closest to the position of the point in buffer A.
;;However, with a prefix argument, Ediff would position all variants around the area indicated by the current point in buffer A: if the point is inside a difference region, then the variants will be positioned at this difference region. If the point is not in any difference region, then it is in an area where all variants agree with each other. In this case, the variants will be positioned so that each would display this area (of agreement).
;;
;; gb
;;Makes current the difference region closest to the position of the point in buffer B.
;;With a prefix argument, behaves like ga, but with respect to buffer B.
;;
;; gc
;;;;In merge sessions: makes current the difference region closest to the point in the merge buffer.
;;;;In 3-file comparison sessions: makes current the region closest to the point in buffer C.
;;;;With a prefix argument, behaves like ga, but with respect to buffer C.
;;
;; !
;;;;Recomputes the difference regions, bringing them up to date. This is often needed because it is common to do all sorts of editing during Ediff sessions, so after a while, the highlighted difference regions may no longer reflect the actual differences among the buffers.
;;
;; *
;;;;Forces refinement of the current difference region, which highlights the exact words of disagreement among the buffers. With a negative prefix argument, unhighlights the current region.
;;;;Forceful refinement may be needed if Ediff encounters a difference region that is larger than ediff-auto-refine-limit. In this situation, Ediff doesn’t do automatic refinement in order to improve response time. (Ediff doesn’t auto-refine on dumb terminals as well, but * still works there. However, the only useful piece of information it can tell you is whether or not the difference regions disagree only in the amount of white space.)
;;
;;This command is also useful when the highlighted fine differences are no longer current, due to user editing.
;;
;; m
;;;;Displays the current Ediff session in a frame as wide as the physical display. This is useful when comparing files side-by-side. Typing m again restores the original size of the frame.
;;
;; |
;;;;Toggles the horizontal/vertical split of the Ediff display. Horizontal split is convenient when it is possible to compare files side-by-side. If the frame in which files are displayed is too narrow and lines are cut off, typing m may help some.
;;
;; @
;;;;Toggles auto-refinement of difference regions (i.e., automatic highlighting of the exact words that differ among the variants). Auto-refinement is turned off on devices where Emacs doesn’t support highlighting.
;;On slow machines, it may be advantageous to turn auto-refinement off. The user can always forcefully refine specific difference regions by typing *.
;;
;; h
;;;;Cycles between full highlighting, the mode where fine differences are not highlighted (but computed), and the mode where highlighting is done with ASCII strings. The latter is not really recommended, unless on a dumb TTY.
;;
;; r
;;;;Restores the old contents of the region in the merge buffer. (If you copied a difference region from buffer A or B into the merge buffer using the commands a or b, Ediff saves the old contents of the region in case you change your mind.)
;;;;This command is enabled in merge sessions only.
;;
;; ra
;;;;Restores the old contents of the current difference region in buffer A, which was previously saved when the user invoked one of these commands: b, ba, ca, which see. This command is enabled in comparison sessions only.
;;
;; rb
;;;;Restores the old contents of the current difference region in buffer B, which was previously saved when the user invoked one of these commands: a, ab, cb, which see. This command is enabled in comparison sessions only.
;;
;; rc
;;;;Restores the old contents of the current difference region in buffer C, which was previously saved when the user invoked one of these commands: ac, bc, which see. This command is enabled in 3-file comparison sessions only.
;;
;; ##
;;;;Tell Ediff to skip over regions that disagree among themselves only in the amount of white space and line breaks.
;;;;Even though such regions will be skipped over, you can still jump to any one of them by typing the region number and then j. Typing ## again puts Ediff back in the original state.
;;
;; #c
;;;;Toggle case sensitivity in the diff program. All diffs are recomputed. Case sensitivity is controlled by the variables ediff-ignore-case-option, ediff-ignore-case-option3, and ediff-ignore-case, which are explained elsewhere.
;;
;; #h
;; #f
;;;;Ediff works hard to ameliorate the effects of boredom in the workplace...
;;Quite often differences are due to identical replacements (e.g., the word “foo” is replaced with the word “bar” everywhere). If the number of regions with such boring differences exceeds your tolerance threshold, you may be tempted to tell Ediff to skip these regions altogether (you will still be able to jump to them via the command j). The above commands, #h and #f, may well save your day!
;;
;;;;#h prompts you to specify regular expressions for each variant. Difference regions where each variant’s region matches the corresponding regular expression will be skipped from then on. (You can also tell Ediff to skip regions where at least one variant matches its regular expression.)
;;;;#f does dual job: it focuses on regions that match the corresponding regular expressions. All other regions will be skipped over. See Selective Browsing, for more.
;;
;; A
;;;;Toggles the read-only property in buffer A. If file A is under version control and is checked in, it is checked out (with your permission).
;;
;; B
;;;;Toggles the read-only property in buffer B. If file B is under version control and is checked in, it is checked out.
;;
;; C
;;;;Toggles the read-only property in buffer C (in 3-file comparison sessions). If file C is under version control and is checked in, it is checked out.
;;
;; ~
;;;;Swaps the windows where buffers A and B are displayed. If you are comparing three buffers at once, then this command would rotate the windows among buffers A, B, and C.
;;
;; i
;;;;Displays all kinds of useful data about the current Ediff session.
;;
;; D
;;;;Runs ediff-custom-diff-program on the variants and displays the buffer containing the output. This is useful when you must send the output to your Mom.
;;With a prefix argument, displays the plain diff output. See Patch and Diff Programs, for details.
;;
;; R
;;;;Displays a list of currently active Ediff sessions—the Ediff Registry. You can then restart any of these sessions by either clicking on a session record or by putting the cursor over it and then typing the return key.
;;;;(Some poor souls leave so many active Ediff sessions around that they lose track of them completely... The R command is designed to save these people from the recently discovered Ediff Proficiency Syndrome.)
;;;;Typing R brings up Ediff Registry only if it is typed into an Ediff Control Panel. If you don’t have a control panel handy, type this in the minibuffer: M-x eregistry. See Registry of Ediff Sessions.
;;
;; M
;;;;Shows the session group buffer that invoked the current Ediff session. See Session Groups, for more information on session groups.
;;
;; z
;;;;Suspends the current Ediff session. (If you develop a condition known as Repetitive Ediff Injury—a serious but curable illness—you must change your current activity. This command tries hard to hide all Ediff-related buffers.)
;;;;The easiest way to resume a suspended Ediff session is through the registry of active sessions. See Registry of Ediff Sessions, for details.
;;
;; q
;;;;Terminates this Ediff session. With a prefix argument (e.g.,1q), asks if you also want to delete the buffers of the variants. Modified files and the results of merges are never deleted.
;;
;; %
;;;;Toggles narrowing in Ediff buffers. Ediff buffers may be narrowed if you are comparing only parts of these buffers via the commands ediff-windows-* and ediff-regions-*, which see.
;;
;; C-l
;;;;Restores the usual Ediff window setup. This is the quickest way to resume an Ediff session, but it works only if the control panel of that session is visible.
;;
;; $$
;;;;While merging with an ancestor file, Ediff is determined to reduce user’s wear and tear by saving him and her much of unproductive, repetitive typing. If it notices that, say, file A’s difference region is identical to the same difference region in the ancestor file, then the merge buffer will automatically get the difference region taken from buffer B. The rationale is that this difference region in buffer A is as old as that in the ancestor buffer, so the contents of that region in buffer B represents real change.
;;;;You may want to ignore such “obvious” merges and concentrate on difference regions where both files “clash” with the ancestor, since this means that two different people have been changing this region independently and they had different ideas on how to do this.
;;;;The above command does this for you by skipping the regions where only one of the variants clashes with the ancestor but the other variant agrees with it. Typing $$ again undoes this setting.
;;
;; $*
;;;;When merging files with large number of differences, it is sometimes convenient to be able to skip the difference regions for which you already decided which variant is most appropriate. Typing $* will accomplish precisely this.
;;;;To be more precise, this toggles the check for whether the current merge is identical to its default setting, as originally decided by Ediff. For instance, if Ediff is merging according to the “combined” policy, then the merge region is skipped over if it is different from the combination of the regions in buffers A and B. (Warning: swapping buffers A and B will confuse things in this respect.) If the merge region is marked as “prefer-A” then this region will be skipped if it differs from the current difference region in buffer A, etc.
;;
;; /
;;;;Toggle to display the ancestor file in 3way merges. You can enable permanently this setting customizing the variable ediff-show-ancestor.
;;
;; &
;;;;In some situations, such as when one of the files agrees with the ancestor file on a difference region and the other doesn’t, Ediff knows what to do: it copies the current difference region from the second buffer into the merge buffer.
;;;;In other cases, the right course of action is not that clearcut, and Ediff would use a default action. The above command changes the default action. The default action can be ‘default-A’ (choose the region from buffer A), ‘default-B’ (choose the region from buffer B), or ‘combined’ (combine the regions from the two buffers). See Merging and diff3, for further details.
;;;;The command & also affects the regions in the merge buffers that have ‘default-A’, ‘default-B’, or ‘combined’ status, provided they weren’t changed with respect to the original. For instance, if such a region has the status ‘default-A’ then changing the default action to ‘default-B’ will also replace this merge-buffer’s region with the corresponding region from buffer B.
;;
;; s
;;;;Causes the merge window shrink to its minimum size, thereby exposing as much of the variant buffers as possible. Typing s again restores the original size of that window.
;;;;With a positive prefix argument, this command enlarges the merge window. E.g., 4s increases the size of the window by about 4 lines, if possible. With a negative numeric argument, the size of the merge window shrinks by that many lines, if possible. Thus, -s shrinks the window by about 1 line and -3s by about 3 lines.
;;;;This command is intended only for temporary viewing; therefore, Ediff restores window C to its original size whenever it makes any other change in the window configuration. However, redisplaying (C-l) or jumping to another difference does not affect window C’s size.
;;;;The split between the merge window and the variant windows is controlled by the variable ediff-merge-window-share, which see.
;;
;; +
;;;;Combines the difference regions from buffers A and B and copies the result into the merge buffer. See Merging and diff3, and the variables ediff-combine-diffs and ediff-combination-pattern.
;;
;; =
;;;;You may run into situations when a large chunk of text in one file has been edited and then moved to a different place in another file. In such a case, these two chunks of text are unlikely to belong to the same difference region, so the refinement feature of Ediff will not be able to tell you what exactly differs inside these chunks. Since eyeballing large pieces of text is contrary to human nature, Ediff has a special command to help reduce the risk of developing a cataract.
;;
;;;;In other situations, the currently highlighted region might be big and you might want to reconcile of them interactively.
;;
;;All of this can be done with the above command, =, which compares regions within Ediff buffers. Typing = creates a child Ediff session for comparing regions in buffers A, B, or C as follows.
;;;;First, you will be asked whether you want to compare the fine differences between the currently highlighted buffers on a word-by-word basis. If you accept, a child Ediff session will start using the currently highlighted regions. Ediff will let you step over the differences word-wise.
;;;;If you reject the offer, you will be asked to select regions of your choice.
;;;;If you are comparing 2 files or buffers: Ediff will ask you to select regions in buffers A and B.
;;;;If you are comparing 3 files or buffers simultaneously: Ediff will ask you to choose buffers and then select regions inside those buffers.
;;;;If you are merging files or buffers (with or without ancestor): Ediff will ask you to choose which buffer (A or B) to compare with the merge buffer and then select regions in those buffers.

;;=======ediff_info end============================================
