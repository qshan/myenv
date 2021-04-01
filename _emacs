'(ansi-color-faces-vector
  [default default default italic underline success warning error])
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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
;;

;;;;ignore the underscore
;;(modify-syntax-entry ?_ "w")
;;;;ignore the underscore in c-mode
;;(add-hook 'c-mode-common-hook (lambda () (modify-syntax-entry ?_ "w")))


;;;;
;;(global-subword-mode 1)


;;enable line highlight
(global-hl-line-mode t)
;;(global-hl-line-mode +1)
;;(hl-line-mode t)

;;M-x package-install
;;;;select file-column-indicator
;;worked???
;;(require 'fill-column-indicator)

;;--------------------------------------------------
;;;;(setq indent-tabs-mode t)
;;;;(setq indent-tabs-mode nil)
;;;;(setq default-tab-width 2)
;;;;to_check_underscore_motion_setting
;;;;to-check-middlescore-motion-setting
;;;;ToCheckCamelCaseCodeStyle
;;;;;;
;;;;ignore the underscore and '-'
;;(modify-syntax-entry ?_ "w")
;;(modify-syntax-entry ?_ "w" (standard-syntax-table))
;;(modify-syntax-entry ?- "w")
;;(modify-syntax-entry ?- "w" (standard-syntax-table))
;;;;;;ignore the underscore in c-mode
;;(add-hook 'c-mode-common-hook #'(lambda () (modify-syntax-entry ?_ "w")))
;;(add-hook 'python-mode-hook   #'(lambda () (modify-syntax-entry ?_ "w")))
;;;;eval-buffer
;;;;load-file ~/.emacs
;;;;(global-superword-mode nil)
;;(global-superword-mode 0)
;;(global-subword-mode +1)
;;(setq global-subword-mode t)
;;;;(superword-mode nil)
;;(superword-mode 0)
;;(subword-mode +1)
;;(setq subword-mode t)
;;;;(require 'subword)
;;;;(global-subword-mode nil)
;;;;(global-superword-mode 1)

;;it is better to end the setting here
;;##################################################
;;--------------------------------------------------
;;--------------------------------------------------
;;to_check_underscore_motion_setting
;;to-check-middlescore-motion-setting
;;ToCheckCamelCaseCodeStyle
;;;;
(defun fshan-subword-mode ()
  "set submod and ignore '-' and '_' for word constitunt"
  (interactive)
  (modify-syntax-entry ?_ "w")
  ;;(modify-syntax-entry ?_ "w" (standard-syntax-table))
  (modify-syntax-entry ?- "w")
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
  ;;(superword-mode nil)
  ;;(superword-mode 0)
  ;;(subword-mode 1)
  (subword-mode +1)
  ;;(setq subword-mode t)
  ;;;; enable just in ruby-mode
  ;;(add-hook 'ruby-mode-hook 'subword-mode)
  ;;(add-hook 'c-mode-common-hook 'subword-mode)
  ;;(add-hook 'python-mode-hook  'subword-mode)
  ;; enable for all programming modes
  (add-hook 'prog-mode-hook 'subword-mode)
  )
;;(require 'my-subword-mode)
;;--------------------------------------------------
;::::::::::::::::::::::::::::::::::::::::::::::::::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Univeral ctags
;;;;https://github.com/universal-ctags
;;;;https://github.com/universal-ctags/ctags-win32/releases
;;;;https://ctags.io/
;;;;https://docs.ctags.io/en/latest/man-pages.html
;;
;;install universal ctags with following script
;;the details could be get here, https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst
;;    $ git clone https://github.com/universal-ctags/ctags.git
;;    $ cd ctags
;;    $ ./autogen.sh
;;    $ #./configure --prefix=/where/you/want # defaults to /usr/local
;;    $ make
;;    $ make install # may require extra privileges depending on where to install
;;
;;set tags for emacs
;;1.generate the TAGS for Emacs
;;find SearchPathName -name "*.[chCH]" -print | etags -
;;find SearchPathName -name "*.[chCH]"  | xargs ctags
;;ctags -e -R --c++-kinds=+px --fields=+iaS --extra=+qf SearchPathName
;;
;;2. TODO;open/set TAGS file for current emancs env
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
;;M-.     ;search/jump to the function definition
;;C-]     ;jump to the function definition on evil mode
;;C-u M-. ;search next function name
;;C-o     ;return back on evil mode
;;M-*     ;return the location of last searching tag
;;C-M-.   ;search the function definition with FunctionName
;;
;;M-x tags-query-replace
;;C-u M-x tags-query-replace
;;search function name in the tags-table-list
;;M-.: FunctionName
;;complete the function name
;;C-n
;;

;;set for company mode
  (with-eval-after-load 'company
    (company-ctags-auto-setup))
;;   (setq company-ctags-extra-tags-files '("$HOME/TAGS" "/usr/include/TAGS"))
;;
;;General completion set with company mode for Global gtags
;;after install Global gtags, and add those setting in emacs init file
;;(require 'company)
;;(add-hook 'after-init-hook 'global-company-mode)


;;;;;;useful .el info
;;functions-args.el
;;;;GNU Emacs package for showing an inline arguments hint for the C/C++ function at point. https://github.com/abo-abo/function-args

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
;;Flycheck is a modern on-the-fly syntax checking extension for GNU Emacs, intended as replacement for the older Flymake extension which is part of GNU Emac
;;;;https://www.flycheck.org/en/latest/
;;;;add those info into init el file after install with MELPA to enable the flycheck
;;(add-hook 'after-init-hook #'global-flycheck-mode)


;;C-x RET r (revert-buffer-with-coding-system)  ;;re-read the file using the correct coding system
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
;;;;;TODO;or update the mepla database
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
;;;;;--------------------------------------------------
;;;;;It’s defined in lisp/init-evil.el. Press C-z to switch between Emacs and Vim key bindings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;install org-mode
;;;;;Using Emacs packaging system. You can install Org from the “package menu”, with
;;M-x list-packages
;;;;;Downloading Org as an archive. You can download Org latest release from Org’s website, and then set the load path in your emcas init files, like .emacs or init.el
;;(add-to-list 'load-path "~/path/to/orgdir/lisp")
;;(add-to-list 'load-path "~/path/to/orgdir/contrib/lisp" t)
;;;;;Using Org’s git repository. download the src, and compile and install
;;$ cd ~/src/
;;$ git clone https://code.orgmode.org/bzg/org-mode.git
;;$ cd org-mode/
;;$ make autoloads
;;$ make doc
;;$ make install

;;;;;For a better experience, the three Org commands org-store-link, org-capture and org-agenda ought to be accessible anywhere in Emacs, not just in Org buffers. To that effect, you need to bind them to globally available keys, like the ones reserved for users (see (elisp)Key Binding Conventions). Here are suggested bindings, please modify the keys to your own liking.
;;(global-set-key (kbd "C-c l") 'org-store-link)
;;(global-set-key (kbd "C-c a") 'org-agenda)
;;(global-set-key (kbd "C-c c") 'org-capture)

;;;;;Files with the ‘.org’ extension use Org mode by default. To turn on Org mode in a file that does not have the extension ‘.org’, make the first line of a file look like this:
;;MY PROJECTS    -*- mode: org; -*-
;;;;;which selects Org mode for this buffer no matter what the file’s name is. See also the variable org-insert-mode-line-in-empty-file.


;;;;;Headlines define the structure of an outline tree. Org headlines start on the left margin3 with one or more stars followed by a space. For example:
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
;;;;;To make sure you are using the correct keyword, type ‘#+’ into the buffer and then use M-TAB to complete it (see Completion).
;;;;;Remember that the keywords after the vertical bar—or the last keyword if no bar is there—must always mean that the item is DONE, although you may use a different word. After changing one of these lines, use C-c C-c with point still in the line to make the changes known to Org mode40.

;;;;;Faces for TODO keywords. Org mode highlights TODO keywords with special faces: org-todo for keywords indicating that an item still has to be acted upon, and org-done for keywords indicating that an item is finished. If you are using more than two different states, you might want to use special faces for some of them. This can be done using the variable org-todo-keyword-faces. For example:
;;(setq org-todo-keyword-faces
;;      '(("TODO" . org-warning) ("STARTED" . "yellow")
;;        ("CANCELED" . (:foreground "blue" :weight bold))))
;;;;;While using a list with face properties as shown for ‘CANCELED’ should work, this does not always seem to be the case. If necessary, define a special face and use that. A string is interpreted as a color. The variable org-faces-easy-properties determines if that color is interpreted as a foreground or a background color.



;;;;;TODO keywords as workflow states. You can use TODO keywords to indicate different, possibly sequential states in the process of working on an item, for example:
;;(setq org-todo-keywords
;;      '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
;;;;;or
;;(setq org-todo-keywords
;;'((sequence "TODO(t)" "|" "DONE(d)")
;;        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;        (sequence "|" "CANCELED(c)")))
;;;;;The vertical bar separates the TODO keywords (states that need action) from the DONE states (which need no further action). If you do not provide the separator bar, the last state is used as the DONE state.
;;;;;With this setup, the command C-c C-t cycles an entry from ‘TODO’ to ‘FEEDBACK’, then to ‘VERIFY’, and finally to ‘DONE’ and ‘DELEGATED’. You may also use a numeric prefix argument to quickly select a specific state. For example C-3 C-c C-t changes the state immediately to ‘VERIFY’. Or you can use S-RIGHT and S-LEFT to go forward and backward through the states. If you define many keywords, you can use in-buffer completion (see Completion) or a special one-key selection scheme (see Fast access to TODO states) to insert these words into the buffer. Changing a TODO state can be logged with a timestamp, see Tracking TODO state changes, for more information.

;;;;;Setting Tags. Tags can simply be typed into the buffer at the end of a headline. After a colon, M-TAB offers completion on tags. There is also a special command for inserting tags:
;;C-c C-q (org-set-tags-command)
;;C-c C-c (org-set-tags-command)

;;;;;Plain Lists
;;;;;Unordered list items start with ‘-’, ‘+’, or ‘*’ as bullets.
;;- Unordered list items
;;+ Unordered list items
;;* Unordered list items
;;;;;Ordered list items start with a numeral followed by either a period or a right parenthesis10, such as ‘1.’ or ‘1)’11 If you want a list to start with a different value—e.g., 20—start the text of the item with ‘[@20]’12. Those constructs can be used in any item of the list in order to enforce a particular numbering.
;;1. ordered list item
;;1) ordered list item
;;;;;Description list items are unordered list items, and contain the separator ‘::’ to distinguish the description term from the description.

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;Hotkey info Here;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;~/.emacs.d/init.el

;;C-z        ;to switch between Emacs and Vim key bindings.
;;M-x shell  ;run avaiable shell in emacs window
;;M-!        ;run shell
;;M-x replace-string   ;replace string, like replace ^M with C-j
;;C-x d ;enter Dired Mode
;;C-x o n    ;switch window to window-n
;;;;C-i      ;evil-jump-forward
;;C-o        ;evil-jump-backward (Evil-mode)
;;gf         ;find-file-at-point (Evil-mode)
;;gd         ;evil-goto-definition (Evil-mode)
;;C-x C-o    ;find-file-at-point
;;;;M-x ffap ;find-file-at-point
;;C-x C-=    ;increase the font size with Evil-mode
;;C-x C-+    ;increase the font size with Evil-mode
;;C-x C--    ;decrease the font size with Evil-mode
;;;;M-x C-+    ;increase the font size
;;;;M-x C--    ;decrease the font size
;;C-g        ;quit current command

;;help and get the info with help
;;;;; list the key binding, (M-x describe-bindings)
;;;;C-h .    ;display-local-help
;;;;C-h RET  ;view-order-manuals display local help
;;;;C-h ?    ;help-for-help
;;;;C-h C-h  ;runs help-for-help. Use this command if you want to see a list of available help commands. Remember, if you partially remember a key binding, just press as much as you can remember and then press C-h, Emacs will list available commands for that prefix. Prefix C-h is no exception. C-h C-h simply returns all key bindings and commands of prefix C-h
;;;;C-h r    ;info-emacs-manual
;;;;C-h t    ;help-with-tutorial to read bundled tutorial.
;;C-h q      ;quit-help
;;
;;;;C-h b    ;(M-x describe-bindings), list the binding info
;;C-h c      ;runs describe-key-briefly to find out what command is bound to a key. For example, after C-h c, run C-x C-f gives you find-files.
;;C-h c      ;describe-key-briefly check the info of input-key
;;C-h f      ;counsel-describe-function ###good###
;;;;C-h k    ;runs describe-key to find out what command is bound to a key, along with the documentation of the command. Use this if you want to know how to use a command.
;;;;C-h k    ;describe-key, will open describe with a windows
;;;;C-h p    ;finder-by-keywords
;;;;C-h K    ;find-function-on-key, will open the function definition
;;C-h C-f    ;find-function, will open the function definition
;;;;C-h C    ;describe-coding-system
;;;;C-h m    ;runs describe-mode to see all the key bindings and documentation of current major mode and minor modes of a buffer.
;;;;C-h w    ;runs where-is to get which keystrokes invoke a given command.
;;;;C-h e    ;runs view-echo-area-messages, allow you to see the logging of echo area messages.
;;;;C-h v    ;runs describe-variable, and asks you for a variable; you can TAB to complete a variable. This command is important, because aside from describing a variable, it allows you to customize the behavior of Emacs and 3rd party packages. But for now, you don't need it.

;;re-load the emacs config file with load-file
;;M-x load-file ~/.emacs    ;load .emacs file as Lisp code, and execute
;;M-x eval-buffer           ;use current buffer/file as Lisp code, and execute
;;M-x eval-region           ;use the region selected as Lisp code, and execute
;;M-x eval-last-sexp        ;use the current line as Lisp code, and execute

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;C-x d ;enter Dired Mode
;;;;;Dired, File Management. Dired is a built-in file manager for Emacs that does some pretty amazing things! Here are some key bindings you should try out:
;;;;;Evil Keybindings and other behaviour
;;C-z     ;(evil-toggle-key);The key used to change to and from Emacs state. Must be readable by read-kbd-macro
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
;;--------------------------------------------------
