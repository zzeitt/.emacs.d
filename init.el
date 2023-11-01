;;; ------------------------- 默认生成 ----------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bookmark-default-file "~/.emacs.d/forOrgs/bookmarks")
 '(bookmark-sort-flag 'last-modified)
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "ab2cbf30ab758c5e936b527377d543ce4927001742f79519b62c45ba9dd9f55e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" default))
 '(inhibit-startup-screen t)
 '(org-agenda-breadcrumbs-separator " > ")
 '(org-agenda-tags-column -60)
 '(org-babel-load-languages '((python . t) (shell . t)))
 '(org-priority-faces '((65 . "#ff6361") (66 . "#bc5090") (67 . "#494ca2")))
 '(org-safe-remote-resources
   '("\\`https://fniessen\\.github\\.io/org-html-themes/org/theme-readtheorg\\.setup\\'"))
 '(org-startup-folded 'show2levels)
 '(org-tags-column -60)
 '(package-selected-packages
   '(powershell htmlize key-seq zotxt org-appear tabspaces magit key-chord counsel ivy spacemacs-theme exotica-theme evil zenburn-theme))
 '(recentf-max-saved-items 100)
 '(recentf-menu-filter 'recentf-arrange-by-dir)
 '(recentf-save-file "~/.emacs.d/forOrgs/recentf")
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Sarasa Fixed SC" :foundry "outline" :slant normal :weight regular :height 120 :width normal))))
 '(bold ((t (:weight bold :foundry "outline" :family "Sarasa Fixed SC"))))
 '(italic ((t (:slant italic :weight light :foundry "outline" :family "Sarasa Fixed SC"))))
 '(org-agenda-done ((t (:foreground "dark green" :height 1.0))))
 '(org-code ((t (:foreground "#28def0" :box (:line-width (1 . 1) :color "grey75" :style released-button)))))
 '(org-habit-alert-face ((t (:background "gold" :foreground "black"))))
 '(org-habit-alert-future-face ((t (:background "darkgoldenrod" :foreground "black"))))
 '(org-scheduled-previously ((t (:foreground "MediumOrchid4" :slant italic))))
 '(org-upcoming-distant-deadline ((t (:inherit org-priority :foreground "gold"))))
 '(org-verbatim ((t (:foreground "#4f97d7" :box (:line-width (1 . 1) :color "grey75" :style released-button))))))


;;; ------------------------ 必要配置 ---------------------------
(set-language-environment "UTF-8")
(pixel-scroll-mode t)
(setq file-name-coding-system 'gbk) ; (Maybe...?)解决中文路径乱码

;;; ------------------------ 美化相关 ---------------------------
;; 字体配置
(when (member "Segoe UI Emoji" (font-family-list))
  (set-fontset-font
   t 'unicode (font-spec :family "Segoe UI Emoji") nil 'prepend))

;; 子弹缩进
(add-to-list 'load-path "~/.emacs.d/myscripts/org-bullets")
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; 显示行号
(global-display-line-numbers-mode 1)

;; 开启文本缩进
(setq org-startup-indented t)

;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)

;; 开启自动换行
(global-visual-line-mode 1)

;; 开启shift-selection
(setq org-support-shift-select t)
(delete-selection-mode 1)

;; 开启行内图片
(setq org-startup-with-inline-images t)
(setq org-image-actual-width nil)

;; 显示列号、文件大小、时间
(setq column-number-mode t)
(setq size-indication-mode t)
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;; markup相关
(setq org-hide-emphasis-markers t)
(add-hook 'org-mode-hook 'org-appear-mode) ; 开启org-appear

;;; ------------------------- 个人习惯 ---------------------------
(add-hook 'org-mode-hook (lambda () (org-zotxt-mode 1))) ; 开启zotxt-mode

;; 开启Evil模式
(setq evil-want-C-i-jump nil) ; 恢复orgmode的<tab>功能
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo) ; 启用redo
(setq evil-want-fine-undo t) ; 启发式undo，避免一下全部撤销
(evil-set-initial-state 'bookmark-bmenu-mode 'normal) ; 在bookmark menu中开启evil
(evil-set-initial-state 'Buffer-menu-mode 'normal) ; 在Buffer中开启evil
(evil-set-initial-state 'org-agenda-mode 'normal) ; 在agenda中开启evil
(evil-set-initial-state 'magit-status-mode 'normal) ; 在magit中开启evil
(evil-set-initial-state 'magit-log-mode 'normal) ; 在magit中开启evil
(evil-set-initial-state 'magit-revision-mode 'normal) ; 在magit中开启evil
(evil-set-initial-state 'magit-diff-mode 'normal) ; 在magit中开启evil
(evil-set-initial-state 'magit-process-mode 'normal) ; 在magit中开启evil
(evil-set-initial-state 'completion-list-mode 'normal) ; 在Completion中开启evil
(evil-set-initial-state 'help-mode 'normal) ; 在Help中开启evil

;; 重定义evil中的'q'
(defun zeit/evil-record-macro ()
  "Borrowed from https://emacs.stackexchange.com/a/38364/38412"
  (interactive)
  (if buffer-read-only
      (quit-window)
    (call-interactively 'evil-record-macro)))
(with-eval-after-load 'evil-maps
  (define-key evil-normal-state-map (kbd "q") 'zeit/evil-record-macro))

;; evil visual 模式下替换
; Ref: https://stackoverflow.com/questions/27125661/emacs-evil-mode-replace-only-in-visual-selection-visual-block#comment42803881_27135843
(setq evil-ex-visual-char-range t) ; visual模式下自动打开`<,`>

;; 自动半最大化
(setq default-frame-alist
  '((fullscreen . fullheight)
    (left . 0)
    (top . 0)))

;; 表格自动对齐和折叠
(setq org-startup-align-all-tables t)
(setq org-startup-shrink-all-tables t)

;; 在行尾换行
(setq org-M-RET-may-split-line '((default . nil)))

;; 开启agenda
(require 'org-agenda) ; 否则无法重映射agenda下的快捷键

;; 跳转支持补全
(setq org-goto-interface 'outline-path-completion)

;; bookmark设置
(setq bookmark-menu-confirm-deletion t) ; 删除书签前确认
(setq bookmark-save-flag 1) ; everytime bookmark is changed, automatically save it

;; 鼠标相关
(setq org-cycle-emulate-tab nil) ; 取消单击缩进


;; 快捷键重映射
; >>>>>>>>>>>>>>> global <<<<<<<<<<<<<<<<<<<<<<<
(global-set-key (kbd "C-<tab>") 'next-buffer) ; Buffer切换
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)
(global-set-key (kbd "C-c a") 'org-agenda) ; 打开Agenda
(global-set-key (kbd "C-c e") 'org-encrypt-entry) ; 加密
(global-set-key (kbd "C-c d") 'org-decrypt-entry) ; 解密
(global-set-key (kbd "C-x r") 'counsel-recentf) ; 打开最近文件
(global-set-key (kbd "C-c j") 'org-goto) ; 跳转
(global-set-key (kbd "<f5>") 'revert-buffer) ; 刷新文件
(global-set-key (kbd "C-c 5") (kbd "C-u C-c #")) ; 全局更新完成度
(global-set-key (kbd "C--") 'text-scale-adjust) ; 调整字体
(global-set-key (kbd "C-=") 'text-scale-adjust) ; 调整字体
(global-set-key (kbd "M-:") 'kill-buffer-and-window) ; 关闭当前窗口及其buffer
(global-set-key (kbd "M-f") 'evil-find-char) ; vim的f功能
(global-set-key (kbd "M-r") 'evil-redo) ; 重做
(global-set-key (kbd "M-s") 'save-buffer) ; 保存
(global-set-key (kbd "M-I") 'magit-status) ; 打开magit
(global-set-key (kbd "M-q") 'keyboard-escape-quit) ; ESC ESC ESC
(global-set-key (kbd "M-<") 'org-insert-structure-template) ; 插入template
(defun backward-kill-char-or-word ()
  "Adopted from https://emacs.stackexchange.com/questions/30401/backward-kill-word-kills-too-much-how-to-make-it-more-intelligent"
  (interactive)
  (cond 
   ((looking-back (rx (char word)) 1)
    (backward-kill-word 1))
   ((looking-back (rx (char blank)) 1)
    (delete-horizontal-space t))
   (t
    (backward-delete-char 1)))
)
(global-set-key (kbd "C-<backspace>") 'backward-kill-char-or-word) ; 前向删除


; >>>>>>>>>>>>>>> define-key <<<<<<<<<<<<<<<<<<<<<<<
;; Vim的一些微调
(define-key evil-normal-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-motion-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd "M-U") (lambda () (interactive) (evil-scroll-line-up 3))) ;; 向上滚屏
(define-key evil-visual-state-map (kbd "M-U") (lambda () (interactive) (evil-scroll-line-up 3))) ;; 向上滚屏
(define-key evil-insert-state-map (kbd "M-U") (lambda () (interactive) (evil-scroll-line-up 3))) ;; 向上滚屏
(define-key evil-normal-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-visual-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-insert-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-motion-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-normal-state-map (kbd "M-D") (lambda () (interactive) (evil-scroll-line-down 3))) ;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-visual-state-map (kbd "M-D") (lambda () (interactive) (evil-scroll-line-down 3))) ;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-insert-state-map (kbd "M-D") (lambda () (interactive) (evil-scroll-line-down 3))) ;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-normal-state-map (kbd "gx") 'org-open-at-point) ; 链接跳转
(define-key evil-normal-state-map (kbd "<return>") 'org-open-at-point) ; 链接跳转
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "<return>") 'dired-find-file)
  ) ; 链接跳转
(with-eval-after-load 'help
  (evil-make-overriding-map help-mode-map 'normal t)
  (evil-define-key 'normal help-mode-map
    (kbd "H") 'help-go-back
    (kbd "L") 'help-go-forward
    (kbd "h") 'evil-backward-char
    (kbd "l") 'evil-forward-char
    (kbd "j") 'evil-next-line
    (kbd "k") 'evil-previous-line
    (kbd "gg") 'evil-goto-first-line
    (kbd "G") 'evil-goto-line
    )
  ) ; Help buffer下的快捷键 ref: https://github.com/syl20bnr/spacemacs/issues/2490#issuecomment-131660583
(evil-define-key 'normal emacs-lisp-mode-map
  (kbd "<return>") 'find-function-at-point
  ) ; 函数跳转
(evil-define-key 'normal org-agenda-mode-map
  (kbd "gx") 'org-agenda-goto
  (kbd "<return>") 'org-agenda-goto
  (kbd "r") 'org-agenda-redo
  (kbd "d") 'org-agenda-day-view
  (kbd "w") 'org-agenda-week-view
  (kbd "m") 'org-agenda-month-view
  (kbd "y") 'org-agenda-year-view
  (kbd "H") 'org-agenda-earlier
  (kbd "L") 'org-agenda-later
  (kbd ".") 'org-agenda-goto-today
  (kbd "v") 'org-agenda-view-mode-dispatch
  (kbd "q") 'org-agenda-quit
  ) ; agenda模式下的快捷键
(evil-define-key 'normal magit-mode-map
  (kbd "d") 'magit-discard
  (kbd "u") 'magit-unstage
  (kbd "U") 'magit-unstage-all
  (kbd "s") 'magit-stage-file
  (kbd "S") 'magit-stage-modified
  (kbd "r") 'magit-refresh
  (kbd "R") 'magit-refresh-all
  (kbd "i") 'magit-gitignore
  (kbd "I") 'magit-init
  (kbd "c") 'magit-commit
  (kbd "P") 'magit-push
  (kbd "L") 'magit-log
  (kbd "q") 'magit-mode-bury-buffer
  (kbd "<return>") 'magit-visit-thing
  (kbd "<down>") 'magit-section-forward
  (kbd "<up>") 'magit-section-backward
  ) ; magit status下的快捷键
(evil-define-key 'normal outline-mode-map
  (kbd "<down>") 'org-next-visible-heading
  ;; (kbd "<down>") 'org-forward-heading-same-level
  (kbd "<up>") 'org-previous-visible-heading
  ;; (kbd "<up>") 'org-backward-heading-same-level
  (kbd "<left>") 'outline-up-heading
  (kbd "<right>") 'org-forward-heading-same-level
  ) ; heading间移动
(evil-define-key 'normal bookmark-bmenu-mode-map
  (kbd "r") 'bookmark-bmenu-rename
  (kbd "w") 'bookmark-bmenu-locate
  (kbd "<return>") 'bookmark-bmenu-this-window
  (kbd "o") 'bookmark-bmenu-other-window
  (kbd "d") (lambda () (interactive) (bookmark-bmenu-delete) (bookmark-bmenu-execute-deletions))
  ) ; bookmark bmenu下的快捷键
(evil-define-key 'normal Buffer-menu-mode-map
  (kbd "r") 'revert-buffer
  (kbd "<return>") 'Buffer-menu-1-window
  (kbd "M-<return>") 'Buffer-menu-this-window
  (kbd "o") 'Buffer-menu-other-window
  (kbd "d") (lambda () (interactive) (Buffer-menu-delete) (Buffer-menu-execute))
  ) ; Buffer menu下的快捷键
(evil-define-key 'normal lisp-interaction-mode-map
  (kbd "q") 'quit-window
  ) ; scratch buffer下的快捷键
(define-key evil-motion-state-map (kbd "K") nil) ; 取消大写k
(define-key evil-normal-state-map (kbd "K") 'next-buffer) ; Buffer切换
(define-key evil-visual-state-map (kbd "K") 'next-buffer) 
(define-key evil-motion-state-map (kbd "K") 'next-buffer) 
(define-key evil-normal-state-map (kbd "J") nil) ; 取消大写j
(define-key evil-normal-state-map (kbd "J") 'previous-buffer) ; Buffer切换
(define-key evil-visual-state-map (kbd "J") 'previous-buffer) 
(define-key evil-motion-state-map (kbd "J") 'previous-buffer) 
(defun zeit/tab ()
  "Disable tab indent in table."
  (interactive)
  (if (not (org-at-table-p))
      (tab-to-tab-stop)
    (org-cycle)))
(define-key evil-insert-state-map (kbd "<tab>") 'zeit/tab) ; 插入模式下恢复tab
(define-key evil-insert-state-map (kbd "C-v") 'org-yank) ; 插入模式下恢复C-v
(define-key evil-insert-state-map (kbd "C-c") 'evil-yank) ; 插入模式下恢复C-c
(define-key evil-insert-state-map (kbd "C-z") 'evil-undo) ; 插入模式下恢复C-z
(define-key evil-insert-state-map (kbd "<left>") 'backward-char) ; 插入模式下恢复shift
(define-key evil-insert-state-map (kbd "<right>") 'forward-char) ; 插入模式下恢复shift
(define-key evil-insert-state-map (kbd "S-<left>") nil) ; 插入模式下恢复shift
(define-key evil-insert-state-map (kbd "S-<right>") nil) ; 插入模式下恢复shift
(define-key minibuffer-local-map (kbd "C-v") 'org-yank) ; minibuffer中恢复C-v
(define-key minibuffer-local-map (kbd "C-c") 'evil-yank) ; minibuffer中恢复C-c
(define-key minibuffer-local-map (kbd "C-z") 'evil-undo) ; minibuffer中恢复C-z
(define-key evil-normal-state-map (kbd "M-S-<return>") (kbd "$ a M-S-<return> <escape>")) ; normal模式org-insert-todo-heading
(define-key evil-normal-state-map (kbd "M-[") 'enlarge-window) ; 竖向增大窗口
(define-key evil-motion-state-map (kbd "M-[") 'enlarge-window) ; 竖向增大窗口
(define-key evil-normal-state-map (kbd "M-]") 'shrink-window) ; 竖向压缩窗口
(define-key evil-motion-state-map (kbd "M-]") 'shrink-window) ; 竖向压缩窗口
(define-key evil-normal-state-map (kbd "M-{") 'enlarge-window-horizontally) ; 横向扩大窗口
(define-key evil-motion-state-map (kbd "M-{") 'enlarge-window-horizontally) ; 横向扩大窗口
(define-key evil-normal-state-map (kbd "M-}") 'shrink-window-horizontally) ; 横向压缩窗口
(define-key evil-motion-state-map (kbd "M-}") 'shrink-window-horizontally) ; 横向压缩窗口
(define-key evil-normal-state-map (kbd "M-|") 'split-window-below) ; 横向分割
(define-key evil-motion-state-map (kbd "M-|") 'split-window-below) ; 横向分割
(define-key evil-normal-state-map (kbd "M-\\") 'split-window-right) ; 竖向分割
(define-key evil-motion-state-map (kbd "M-\\") 'split-window-right) ; 竖向分割
(define-key evil-normal-state-map (kbd "M-F") 'indent-region) ; 自动缩进
(define-key evil-motion-state-map (kbd "M-F") 'indent-region) ; 自动缩进
(define-key evil-visual-state-map (kbd "M-F") 'indent-region) ; 自动缩进
(define-key evil-normal-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-motion-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-visual-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-insert-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-normal-state-map (kbd "M-?") 'evil-toggle-fold) ; 折叠
(define-key evil-motion-state-map (kbd "M-?") 'evil-toggle-fold) ; 折叠
(define-key evil-visual-state-map (kbd "M-?") 'evil-toggle-fold) ; 折叠
(define-key evil-insert-state-map (kbd "M-?") 'evil-toggle-fold) ; 折叠
(define-key evil-insert-state-map (kbd "M-n") 'org-metadown) ; 将项目下移
(define-key evil-insert-state-map (kbd "M-N") 'org-metaup) ; 将项目上移
(define-key evil-insert-state-map (kbd "M-i") 'org-shiftmetaright) ; 将项目右移
(define-key evil-insert-state-map (kbd "M-I") 'org-shiftmetaleft) ; 将项目左移
(define-key evil-normal-state-map (kbd "M-S") 'save-some-buffers) ; 保存全部文件
(define-key evil-motion-state-map (kbd "M-S") 'save-some-buffers) ; 保存全部文件
(define-key evil-visual-state-map (kbd "M-S") 'save-some-buffers) ; 保存全部文件
(define-key evil-normal-state-map (kbd "M-,") 'org-metaleft) ; 将项目左移
(define-key evil-motion-state-map (kbd "M-,") 'org-metaleft) ; 将项目左移
(define-key evil-visual-state-map (kbd "M-,") 'org-metaleft) ; 将项目左移
(define-key evil-normal-state-map (kbd "M-.") 'org-metaright) ; 将项目右移
(define-key evil-motion-state-map (kbd "M-.") 'org-metaright) ; 将项目右移
(define-key evil-visual-state-map (kbd "M-.") 'org-metaright) ; 将项目右移
(define-key evil-normal-state-map (kbd "M-o") 'org-mark-ring-goto) ; 回到上次操作的地方
(define-key evil-insert-state-map (kbd "M-o") 'evil-open-below) ; 添加新行在下方
(define-key evil-insert-state-map (kbd "M-O") 'evil-open-above) ; 添加新行在上方
(define-key evil-insert-state-map (kbd "M-~") 'org-emphasize) ; markup
(define-key evil-insert-state-map (kbd "M-`") (lambda () (interactive) (org-emphasize ?\~))) ; markup "~"
(define-key evil-normal-state-map (kbd "M-`") (lambda () (interactive) (org-emphasize ?\~))) ; markup "~"
(define-key evil-motion-state-map (kbd "M-`") (lambda () (interactive) (org-emphasize ?\~))) ; markup "~"
(define-key evil-visual-state-map (kbd "*") (lambda () (interactive) (org-emphasize ?\*))) ; markup "*"
(define-key evil-visual-state-map (kbd "=") (lambda () (interactive) (org-emphasize ?\=))) ; markup "="
(define-key evil-visual-state-map (kbd "/") (lambda () (interactive) (org-emphasize ?\/))) ; markup "/"
(define-key evil-visual-state-map (kbd "+") (lambda () (interactive) (org-emphasize ?\+))) ; markup "+"
(define-key evil-visual-state-map (kbd "_") (lambda () (interactive) (org-emphasize ?\_))) ; markup "_"
(define-key evil-normal-state-map (kbd "M") 'bookmark-set) ; 添加书签
(define-key evil-motion-state-map (kbd "M") 'bookmark-set) ; 添加书签
(define-key evil-normal-state-map (kbd "M-m") 'bookmark-bmenu-list) ; 显示所有书签
(define-key evil-motion-state-map (kbd "M-m") 'bookmark-bmenu-list) ; 显示所有书签
(defun zeit/set-mark(CHAR &optional POS ADVANCE)
  "Set mark in both evil and bookmark."
  (interactive (list (read-char)))
  (let ((schar (single-key-description CHAR)))
    (bookmark-set schar)
    (evil-set-marker CHAR POS ADVANCE)
    (message "Mark set and saved as \"%s\"" schar)))
(define-key evil-normal-state-map (kbd "m") 'zeit/set-mark) ; 添加书签
(define-key evil-motion-state-map (kbd "m") 'zeit/set-mark) ; 添加书签

;; 使用key-chord快捷键
; >>>>>>>>>>>>>>> key-seq-define <<<<<<<<<<<<<<<<<<<<<<<
(add-to-list 'load-path "~/.emacs.d/myscripts/key-chord")
(add-to-list 'load-path "~/.emacs.d/myscripts/key-seq")
(require 'key-chord)
(require 'key-seq)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.1)
(setq key-chord-safety-interval-forward 0.1)
(key-seq-define evil-normal-state-map "vc" 'evil-visual-block) ; 块可视模式
(key-seq-define evil-visual-state-map "vc" 'evil-visual-block) ; 块可视模式
(key-seq-define evil-motion-state-map "vc" 'evil-visual-block) ; 块可视模式
(key-seq-define evil-normal-state-map "zo" 'other-window) ; 切换其他窗口
(key-seq-define evil-motion-state-map "zo" 'other-window) ; 切换其他窗口
(key-seq-define evil-normal-state-map ";4" 'switch-to-buffer-other-window) ; 在当前窗口打开buffer
(key-seq-define evil-motion-state-map ";4" 'switch-to-buffer-other-window) ; 在当前窗口打开buffer
(key-seq-define evil-normal-state-map ";1" 'delete-other-windows) ; 关闭其他窗口
(key-seq-define evil-motion-state-map ";1" 'delete-other-windows) ; 关闭其他窗口
(key-seq-define evil-normal-state-map "zi" 'delete-window) ; 关闭当前窗口
(key-seq-define evil-motion-state-map "zi" 'delete-window) ; 关闭当前窗口
(key-seq-define evil-normal-state-map ";a" 'org-agenda) ; 打开Agenda
(key-seq-define evil-normal-state-map ";r" 'counsel-recentf) ; 打开最近文件
(key-seq-define evil-motion-state-map ";r" 'counsel-recentf) ; 打开最近文件
(key-seq-define evil-normal-state-map ";f" 'find-file) ; 查找文件
(key-seq-define evil-motion-state-map ";f" 'find-file) ; 查找文件
(key-seq-define evil-normal-state-map ";t" 'org-todo) ; 切换TODO
(key-seq-define evil-normal-state-map ";s" 'org-schedule) ; 设定Schedule
(key-seq-define evil-normal-state-map ";z" 'org-deadline) ; 设定Deadline
(key-seq-define evil-normal-state-map "zp" 'org-set-property) ; 设定Property
(key-seq-define evil-normal-state-map ";b" (lambda () (interactive) (select-window (list-buffers)))) ; 展示buffers
(key-seq-define evil-motion-state-map ";b" (lambda () (interactive) (select-window (list-buffers)))) ; 展示buffers
(key-seq-define evil-normal-state-map ";c" 'org-ctrl-c-ctrl-c) ; 替换C-c C-c
(key-seq-define evil-normal-state-map "zz" 'org-kill-note-or-show-branches) ; note页取消，相当于替换C-c C-k
(key-seq-define evil-normal-state-map "zz"  'org-edit-src-abort) ; 替换C-c C-k
(key-seq-define evil-normal-state-map ";v" 'org-archive-subtree-default) ; 归档
(key-seq-define evil-normal-state-map ";x" 'org-toggle-archive-tag) ; 添加归档标签
(key-seq-define evil-normal-state-map "[[" (kbd "o <escape> P")) ; 在下一行粘贴
(key-seq-define evil-motion-state-map "[[" (kbd "o <escape> P")) ; 在下一行粘贴
(key-seq-define evil-normal-state-map ";j" 'org-metadown) ; 将项目下移
(key-seq-define evil-motion-state-map ";j" 'org-metadown) ; 将项目下移
(key-seq-define evil-normal-state-map ";k" 'org-metaup) ; 将项目上移
(key-seq-define evil-motion-state-map ";k" 'org-metaup) ; 将项目上移
(key-seq-define evil-normal-state-map ";h" 'org-shiftmetaleft) ; 将项目左移
(key-seq-define evil-motion-state-map ";h" 'org-shiftmetaleft) ; 将项目左移
(key-seq-define evil-normal-state-map ";l" 'org-shiftmetaright) ; 将项目右移
(key-seq-define evil-motion-state-map ";l" 'org-shiftmetaright) ; 将项目右移
(key-seq-define evil-normal-state-map ";q" 'dabbrev-expand) ; 自动扩展词
(key-seq-define evil-motion-state-map ";q" 'dabbrev-expand) ; 自动扩展词
(key-seq-define evil-normal-state-map ";w" 'org-refile) ; 移动树项目
(key-seq-define evil-motion-state-map ";w" 'org-refile) ; 移动树项目
(key-seq-define evil-visual-state-map ";w" 'org-refile) ; 移动树项目
(key-seq-define evil-normal-state-map ";g" (kbd "A SPC [/] <escape>")) ; 添加进度条
(key-seq-define evil-motion-state-map ";g" (kbd "A SPC [/] <escape>")) ; 添加进度条
(key-seq-define evil-visual-state-map ";g" (kbd "A SPC [/] <escape>")) ; 添加进度条
(key-seq-define evil-normal-state-map "zs" 'org-sort) ; 排序
(key-seq-define evil-motion-state-map "zs" 'org-sort) ; 排序
(key-seq-define evil-visual-state-map "zs" 'org-sort) ; 排序
(key-seq-define evil-normal-state-map "zt" 'org-time-stamp) ; 插入时间戳
(key-seq-define evil-motion-state-map "zt" 'org-time-stamp) ; 插入时间戳
(key-seq-define evil-visual-state-map "zt" 'org-time-stamp) ; 插入时间戳
(key-seq-define evil-normal-state-map "zu" 'org-export-dispatch) ; org导出
(key-seq-define evil-normal-state-map "z," 'org-insert-structure-template) ; 插入template
(key-seq-define evil-normal-state-map "z;" 'org-zotxt-insert-reference-link) ; 插入zotero引用
(key-seq-define evil-normal-state-map "z'" 'org-zotxt-open-attachment) ; 打开zotero pdf

(defun zeit/refresh ()
  "Refresh the percentage of checkbox/TODOs & redisplay inline images & align tags."
  (interactive)
  (org-update-statistics-cookies "ALL")
  (org-redisplay-inline-images)
  (fset 'zeit-align-tags (kbd "C-u C-c C-q"))
  (execute-kbd-macro 'zeit-align-tags)
  (message "Refresh done!")
  )
(key-seq-define evil-normal-state-map "zr" 'zeit/refresh)

(defun zeit/toggle ()
  "Toggle link/inline-image/force-cycle."
  (interactive)
  (org-latex-preview)
  (org-toggle-link-display)
  (org-toggle-inline-images)
  (org-cycle-force-archived)
  )
(key-seq-define evil-normal-state-map ";;" 'zeit/toggle) ; 切换显示
(key-seq-define evil-motion-state-map ";;" 'zeit/toggle) ; 切换显示

(defun zeit/addlink (link)
  "Add link (mostly URL) to selected text."
  (interactive "sEnter link:")
  (setq st (region-beginning))
  (setq ed (region-end))
  (goto-char ed)
  (insert "]]")
  (goto-char st)
  (insert (format "[[%s][" link))
  (message "Added link: %s" link)
  )
(key-seq-define evil-visual-state-map "[i" 'zeit/addlink) ; 添加链接


;;; ----------------------- 系统设置 ----------------------------
;; 镜像
(require 'package)
(setq package-archives
      '(
        ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        )
      )
(package-initialize)

;; 开启自动备份
(setq make-backup-files t)

;; 打开最近文件
(recentf-mode t)

;; 保存最近浏览位置
(require 'saveplace)
(setq save-place-file "~/.emacs.d/forOrgs/saveplace")
(save-place-mode 1)

;; 自动更新buffer
(global-auto-revert-mode t)

;; 加密
(require 'org-crypt)
(require 'epa-file)
(epa-file-enable)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
(setq org-crypt-key nil)
(setq epa-file-cache-passphrase-for-symmetric-encryption t)

;; 移动项目树
(setq org-refile-targets
      '(
        (nil :maxlevel . 4)
        (org-agenda-files :maxlevel . 4)
        )
      ) ; 设置可以移动到其它文件 
(setq org-outline-path-complete-in-steps nil) ; Refile in a single go
(setq org-refile-use-outline-path 'file) ; 显示完整路径


;;; ----------------------- 待办设置 ------------------------------

;; 关键字（配置完计得输入`M-x org-mode-restart`）
(setq org-todo-keywords
      '((sequence
         "TODO°(t)"
         "DOING(i)"
         "STUCK(s)"
         "AWAIT(a)"
         "|"
         "DONE√(d@/!)"
         "CANC.(c@/!)"
         "FAIL.(f@/!)"
         )))
(setq org-todo-keyword-faces
      '(("TODO°"     . (:background "#4c4c4c" :foreground "#dc752e" :weight bold))
        ("DOING"    . (:background "#4c4c4c" :foreground "#d5cb6d" :weight bold))
        ("STUCK"    . (:background "#4c4c4c" :foreground "#800000" :weight bold))
        ("AWAIT" . (:background "#073642" :foreground "gray" :weight bold))
        ("CANC." . (:background "gray" :foreground "black" :weight bold))
        ("FAIL."   . (:background "gray" :foreground "#793e12" :weight bold))
        ("DONE√"     . (:background "#59aa00" :foreground "#e4e4e4" :weight bold))))

;; 添加创建日期
(defun zeit/insert-created-date(&rest ignore)
  "Borrowed from https://emacs.stackexchange.com/a/72148/38412"
  (org-set-property "CREATED" (format-time-string "%Y-%m-%d %T")))
(advice-add 'org-insert-todo-heading :after #'zeit/insert-created-date)

;; 自动DONE
(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)    ; turn off logging
    (org-todo
     (if (= n-not-done 0) "DONE√"       ; all done
       (if (= n-done 0) "TODO°"         ; all not done
         "DOING"                        ; some done
         )))))
(add-hook 'org-after-todo-statistics-hook #'org-summary-todo)

;; 时间线
(setq org-agenda-use-time-grid t)
(setq org-agenda-time-grid
      '(
        (daily today require-timed)
        (300 600 900 1200 1500 1800 2100 2400)
        "-....." "---------------------------------------"
        ))
(setq org-agenda-current-time-string
      "--------------¯\\_(ツ)_/¯---------------"
      )

;; Agenda
(setq org-agenda-files 
      '(
        "~/.emacs.d/forOrgs/book.org"
        "~/.emacs.d/forOrgs/cheatsheet.org"
        "~/.emacs.d/forOrgs/diary.org"
        "~/.emacs.d/forOrgs/film.org"
        "~/.emacs.d/forOrgs/game.org"
        "~/.emacs.d/forOrgs/geek.org"
        "~/.emacs.d/forOrgs/habit.org"
        "~/.emacs.d/forOrgs/init.org"
        "~/.emacs.d/forOrgs/learn.org"
        "~/.emacs.d/forOrgs/life.org"
        "~/.emacs.d/forOrgs/research.org"
        "~/.emacs.d/forOrgs/stuff.org"
        "~/.emacs.d/forOrgs/wish.org"
        "~/.emacs.d/forOrgs/work.org"
        "~/.emacs.d/forOrgs/yakusoku.org"
        )
      )
(setq org-agenda-prefix-format
      '(
        (agenda . " %i %-21:c%?-12t% s%b")
        (todo   . " %i %-21:c%b")
        (tags   . " %i %-21:c")
        (search . " %i %-21:c")
        )
      ) ; 显示父级项目

(setq org-agenda-custom-commands 
      '(("w" "Work"
         (
          (agenda "" ;; (1) (2) (3) (4)
                ((org-agenda-span 7)
                 (org-agenda-files '("~/.emacs.d/forOrgs/work.org")) ;; (5)
                 (org-agenda-sorting-strategy '(priority-up effort-down)))
                );; (5) cont.
          (todo "TODO°|DOING"
                ((org-agenda-files '("~/.emacs.d/forOrgs/work.org")))
                )
          ;; (todo "TODO°")
          )
         )
        ;; ("~/.emacs.d/forOrgs/work.html")) ;; (6)
        ;; ...other commands here
        )
      )

;; Archive
(setq org-archive-location "archive.org::* From [[file:%s]]")
(setq org-todo-state-tags-triggers
      '(
        ("CANC." ("ARCHIVE" . t))
        )
      ) ; 自动将CANCELED项目标记为archive

;; Habit
(require 'org-habit)
(setq org-habit-show-habits-only-for-today nil)
(setq org-habit-show-done-always-green t)
(setq org-habit-graph-column 0)
(setq org-habit-preceding-days 18)
(setq org-habit-following-days 3)


;;; ----------------------- git设置 ------------------------------

;; 自动刷新
(with-eval-after-load 'magit-mode
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t))

