;;; ------------------------- 默认生成 ----------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" default))
 '(inhibit-startup-screen t)
 '(org-agenda-breadcrumbs-separator " > ")
 '(org-agenda-tags-column -60)
 '(org-priority-faces '((65 . "#ff6361") (66 . "#bc5090") (67 . "#494ca2")))
 '(org-startup-folded 'show2levels)
 '(org-tags-column -60)
 '(package-selected-packages
   '(key-seq key-chord counsel ivy spacemacs-theme exotica-theme evil zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "更纱黑体 Mono SC Nerd" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))
 '(org-agenda-done ((t (:foreground "dark green" :height 1.0))))
 '(org-habit-alert-face ((t (:background "gold" :foreground "black"))))
 '(org-habit-alert-future-face ((t (:background "darkgoldenrod" :foreground "black"))))
 '(org-scheduled-previously ((t (:foreground "MediumOrchid4" :slant italic))))
 '(org-upcoming-distant-deadline ((t (:inherit org-priority :foreground "gold")))))



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
(global-linum-mode 1)
(setq linum-format 'dynamic)

;; 开启文本缩进
(setq org-startup-indented t)

;; 开启自动换行
(global-visual-line-mode 1)

;; 开启行内图片
(setq org-startup-with-inline-images t)
(setq org-image-actual-width nil)

;; 显示列号、文件大小、时间
(setq column-number-mode t)
(setq size-indication-mode t)
(display-time-mode 1)
(setq display-time-24hr-format t)


;;; ------------------------- 个人习惯 ---------------------------
;; 开启Evil模式
(setq evil-want-C-i-jump nil) ; 恢复orgmode的<tab>功能
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo) ; 启用redo
(setq evil-want-fine-undo t) ; 启发式undo，避免一下全部撤销

;; 在行尾换行
(setq org-M-RET-may-split-line '((default . nil)))

;; 开启shift-selection
(setq org-support-shift-select t)

;; 开启agenda
(require 'org-agenda) ; 否则无法重映射agenda下的快捷键
(evil-set-initial-state 'org-agenda-mode 'normal)

;; 快捷键重映射
(global-set-key (kbd "C-<tab>") 'next-buffer) ; Buffer切换
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)
(global-set-key (kbd "C-c a") 'org-agenda) ; 打开Agenda
(global-set-key (kbd "C-c e") 'org-encrypt-entry) ; 加密
(global-set-key (kbd "C-c d") 'org-decrypt-entry) ; 解密
(global-set-key (kbd "C-x r") 'counsel-recentf) ; 打开最近文件
(global-set-key (kbd "<f5>") 'revert-buffer) ; 刷新文件
(global-set-key (kbd "C-c 5") (kbd "C-u C-c #")) ; 全局更新完成度
(global-set-key (kbd "C--") 'text-scale-adjust) ; 调整字体
(global-set-key (kbd "C-=") 'text-scale-adjust) ; 调整字体
(define-key evil-normal-state-map (kbd "gx") 'org-open-at-point) ; 链接跳转
(define-key evil-normal-state-map (kbd "<return>") 'org-open-at-point) ; 链接跳转
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
	) ; agenda模式下的跳转

;; Vim的一些微调
(define-key evil-normal-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-visual-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-insert-state-map (kbd "M-u") 'evil-scroll-up)
(define-key evil-normal-state-map (kbd "M-U") (kbd "C-u 3 C-y")) ;; 向上滚屏
(define-key evil-normal-state-map (kbd "M-U") (kbd "C-u 3 C-y")) ;; 向上滚屏
(define-key evil-normal-state-map (kbd "M-U") (kbd "C-u 3 C-y")) ;; 向上滚屏
(define-key evil-normal-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-visual-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-insert-state-map (kbd "M-d") 'evil-scroll-down)
(define-key evil-normal-state-map (kbd "M-D") (kbd "C-u 3 C-e")) ;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-visual-state-map (kbd "M-D") (kbd "C-u 3 C-e")) ;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-insert-state-map (kbd "M-D") (kbd "C-u 3 C-e")) ;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-motion-state-map (kbd "K") nil) ; 取消大写k
(define-key evil-normal-state-map (kbd "K") 'next-buffer) ; Buffer切换
(define-key evil-visual-state-map (kbd "K") 'next-buffer) 
(define-key evil-motion-state-map (kbd "K") 'next-buffer) 
(define-key evil-normal-state-map (kbd "J") nil) ; 取消大写j
(define-key evil-normal-state-map (kbd "J") 'previous-buffer) ; Buffer切换
(define-key evil-visual-state-map (kbd "J") 'previous-buffer) 
(define-key evil-motion-state-map (kbd "J") 'previous-buffer) 
(define-key evil-insert-state-map (kbd "<tab>") 'tab-to-tab-stop) ; 插入模式下恢复tab
(define-key evil-insert-state-map (kbd "C-v") 'org-yank) ; 插入模式下恢复C-v
(define-key evil-insert-state-map (kbd "C-c") 'evil-yank) ; 插入模式下恢复C-c
(define-key evil-insert-state-map (kbd "C-z") 'evil-undo) ; 插入模式下恢复C-z
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
(define-key evil-normal-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-motion-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-visual-state-map (kbd "M-/") 'comment-line) ; 注释
(define-key evil-insert-state-map (kbd "M-/") 'comment-line) ; 注释

;; 使用key-chord快捷键
(require 'key-chord)
(setq key-chord-two-keys-delay 0.1)
(key-chord-mode 1) 
(key-seq-define evil-insert-state-map "z;" 'evil-normal-state) ; 退出编辑模式
(key-seq-define evil-visual-state-map "z;" 'evil-normal-state) ; 退出可视模式
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
(key-seq-define evil-normal-state-map "z0" 'kill-buffer-and-window) ; 关闭当前窗口及其buffer
(key-seq-define evil-motion-state-map "z0" 'kill-buffer-and-window) ; 关闭当前窗口及其buffer
(key-seq-define evil-normal-state-map ";a" 'org-agenda) ; 打开Agenda
(key-seq-define evil-normal-state-map ";r" 'counsel-recentf) ; 打开最近文件
(key-seq-define evil-motion-state-map ";r" 'counsel-recentf) ; 打开最近文件
(key-seq-define evil-normal-state-map ";e" 'org-encrypt-entry) ; 加密文件
(key-seq-define evil-normal-state-map ";d" 'org-decrypt-entry) ; 解密文件
(key-seq-define evil-normal-state-map ";f" 'find-file) ; 查找文件
(key-seq-define evil-motion-state-map ";f" 'find-file) ; 查找文件
(key-seq-define evil-normal-state-map ";t" 'org-todo) ; 切换TODO
(key-seq-define evil-normal-state-map ";s" 'org-schedule) ; 设定Schedule
(key-seq-define evil-normal-state-map ";z" 'org-deadline) ; 设定Deadline
(key-seq-define evil-normal-state-map "zp" 'org-priority) ; 设定Priority
(key-seq-define evil-normal-state-map ";b" 'list-buffers) ; 展示buffers
(key-seq-define evil-motion-state-map ";b" 'list-buffers) ; 展示buffers
(key-seq-define evil-normal-state-map ";c" 'org-ctrl-c-ctrl-c) ; 替换C-c C-c
(key-seq-define evil-normal-state-map "zz" 'org-kill-note-or-show-branches) ; note页取消，相当于替换C-c C-k
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
(key-seq-define evil-normal-state-map "z," 'org-metaleft) ; 将项目左移
(key-seq-define evil-motion-state-map "z," 'org-metaleft) ; 将项目左移
(key-seq-define evil-normal-state-map ";l" 'org-shiftmetaright) ; 将项目右移
(key-seq-define evil-motion-state-map ";l" 'org-shiftmetaright) ; 将项目右移
(key-seq-define evil-normal-state-map "z." 'org-metaright) ; 将项目右移
(key-seq-define evil-motion-state-map "z." 'org-metaright) ; 将项目右移
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
  "Toggle link and inline image."
  (interactive)
  (org-toggle-link-display)
  (org-toggle-inline-images)
  )
(key-seq-define evil-normal-state-map ";;" 'zeit/toggle) ; 切换显示
(key-seq-define evil-motion-state-map ";;" 'zeit/toggle) ; 切换显示


;;; ----------------------- 系统设置 ----------------------------
;; 镜像
(require 'package)
(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
	)
      )
(package-initialize)

;; 关闭自动备份
(setq make-backup-files nil)

;; 打开最近文件
(recentf-mode t)
(setq recentf-max-menu-items 10)

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
      '((nil :maxlevel . 4)
	(org-agenda-files :maxlevel . 4))
      ) ; 设置可以移动到其它文件 
(setq org-outline-path-complete-in-steps nil) ; Refile in a single go
(setq org-refile-use-outline-path 'file) ; 显示完整路径


;;; ----------------------- 待办设置 ------------------------------
;; 关键字（配置完计得输入`M-x org-mode-restart`）
(setq org-todo-keywords
      '((sequence
	 "TODO(t)"
	 "DOING(i)"
	 "STUCK(s)"
	 "CANCELED(c@/!)"
	 "FAILED(f@/!)"
	 "|"
	 "DONE(d@/!)"
	 ))
      )
(setq org-todo-keyword-faces
      '(("TODO"     . (:background "#4c4c4c" :foreground "#dc752e" :weight bold))
	("DOING"    . (:background "#4c4c4c" :foreground "#d5cb6d" :weight bold))
	("STUCK"    . (:background "#4c4c4c" :foreground "#800000" :weight bold))
	("DONE"     . (:background "#4c4c4c" :foreground "#86dc2f" :weight bold))
	("CANCELED" . (:background "gray" :foreground "black" :weight bold))
	("FAILED"   . (:background "gray" :foreground "#793e12" :weight bold))
	)
      )

;; 时间线
(setq org-agenda-use-time-grid t)
(setq org-agenda-time-grid
      '((daily today require-timed)
        (300 600 900 1200 1500 1800 2100 2400)
        "-....." "---------------------------------------"
	)
      )
(setq org-agenda-current-time-string
      "--------------¯\\_(ツ)_/¯---------------"
      )

;; Agenda
(setq org-agenda-files 
      '("C:/Users/zeit/forOrgs/book.org"
	  "C:/Users/zeit/forOrgs/cheatsheet.org"
        "C:/Users/zeit/forOrgs/diary.org"
        "C:/Users/zeit/forOrgs/film.org"
        "C:/Users/zeit/forOrgs/game.org"
        "C:/Users/zeit/forOrgs/geek.org"
        "C:/Users/zeit/forOrgs/habbit.org"
        "C:/Users/zeit/forOrgs/hello.org"
        "C:/Users/zeit/forOrgs/init.org"
        "C:/Users/zeit/forOrgs/learn.org"
        "C:/Users/zeit/forOrgs/life.org"
        "C:/Users/zeit/forOrgs/research.org"
        "C:/Users/zeit/forOrgs/stuff.org"
        "C:/Users/zeit/forOrgs/wish.org"
        "C:/Users/zeit/forOrgs/work.org"
        "C:/Users/zeit/forOrgs/yakusoku.org")
	)
(setq org-agenda-prefix-format '((agenda . " %i %-21:c%?-12t% s%b")
				 (todo   . " %i %-21:c%b")
				 (tags   . " %i %-21:c")
				 (search . " %i %-21:c"))
      ) ; 显示父级项目

;; Archive
(setq org-archive-location "archive.org::* From [[file:%s]]")
(setq org-todo-state-tags-triggers
      '(("CANCELED" ("ARCHIVE" . t))
	)
      ) ; 自动将CANCELED项目标记为archive

;; Habit
(require 'org-habit)
(setq org-habit-show-habits-only-for-today nil)
(setq org-habit-show-done-always-green t)
(setq org-habit-graph-column 0)
(setq org-habit-preceding-days 18)
(setq org-habit-following-days 3)
