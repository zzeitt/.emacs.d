;;; ------------------------- 默认生成 ----------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bookmark-sort-flag 'last-modified)
 '(column-number-mode t)
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("7fd8b914e340283c189980cd1883dbdef67080ad1a3a9cc3df864ca53bdc89cf" "ab2cbf30ab758c5e936b527377d543ce4927001742f79519b62c45ba9dd9f55e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "3263bd17a7299449e6ffe118f0a14b92373763c4ccb140f4a30c182a85516d7f" default))
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(mouse-drag-and-drop-region 'control)
 '(mouse-drag-and-drop-region-cross-program t)
 '(org-agenda-breadcrumbs-separator " > ")
 '(org-agenda-files
   '("c:/Users/zhongtao/.emacs.d/forOrgs/cheatsheet.org" "c:/Users/zhongtao/.emacs.d/forOrgs/book.org" "c:/Users/zhongtao/.emacs.d/forOrgs/diary.org" "c:/Users/zhongtao/.emacs.d/forOrgs/film.org" "c:/Users/zhongtao/.emacs.d/forOrgs/game.org" "c:/Users/zhongtao/.emacs.d/forOrgs/geek.org" "c:/Users/zhongtao/.emacs.d/forOrgs/init.org" "c:/Users/zhongtao/.emacs.d/forOrgs/learn.org" "c:/Users/zhongtao/.emacs.d/forOrgs/life.org" "c:/Users/zhongtao/.emacs.d/forOrgs/research.org" "c:/Users/zhongtao/.emacs.d/forOrgs/thing.org" "c:/Users/zhongtao/.emacs.d/forOrgs/wish.org" "c:/Users/zhongtao/.emacs.d/forOrgs/work.org" "c:/Users/zhongtao/.emacs.d/forOrgs/yakusoku.org"))
 '(org-agenda-tags-column -60)
 '(org-directory "~/.emacs.d/forOrgs")
 '(org-download-heading-lvl nil)
 '(org-download-image-dir "./_assets/screenshots")
 '(org-list-allow-alphabetical t)
 '(org-safe-remote-resources
   '("\\`https://fniessen\\.github\\.io/org-html-themes/org/theme-readtheorg\\.setup\\'"))
 '(org-src-lang-modes
   '(("C" . c)
     ("C++" . c++)
     ("asymptote" . asy)
     ("bash" . sh)
     ("beamer" . latex)
     ("calc" . fundamental)
     ("cpp" . c++)
     ("ditaa" . artist)
     ("desktop" . conf-desktop)
     ("dot" . graphviz-dot)
     ("elisp" . emacs-lisp)
     ("ocaml" . tuareg)
     ("screen" . shell-script)
     ("shell" . sh)
     ("sqlite" . sql)
     ("jira" . sql)
     ("jirachart-pie" . sql)
     ("jirachart-2d" . sql)
     ("toml" . conf-toml)))
 '(org-startup-folded 'show2levels)
 '(package-selected-packages
   '(elfeed powershell ahk-mode nginx-mode edit-indirect org-fragtog markdown-preview-mode markdown-mode org-id-cleanup cmake-mode adoc-mode request-deferred atomic-chrome org-download graphviz-dot-mode htmlize key-seq zotxt org-appear tabspaces magit key-chord counsel ivy spacemacs-theme exotica-theme evil zenburn-theme))
 '(recentf-max-saved-items 8000)
 '(recentf-menu-filter 'recentf-arrange-by-dir)
 '(safe-local-variable-values
   '((eval org-sbe "startup-block")
     (eval add-hook 'before-save-hook 'time-stamp)
     (eval add-hook 'after-save-hook 'org-html-export-to-html nil 'make-it-local)
     (eval setq org-format-latex-options
           (plist-put org-format-latex-options :scale 1.2))
     (org-confirm-babel-evaluate)))
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Sarasa Fixed SC" :foundry "outline" :slant normal :weight regular :height 112 :width normal))))
 '(bold ((t (:weight bold :foundry "outline" :family "Sarasa Fixed SC"))))
 '(italic ((t (:slant italic :weight light :foundry "outline" :family "Sarasa Fixed SC"))))
 '(org-agenda-done ((t (:foreground "dark green" :height 1.0))))
 '(org-code ((t (:foreground "#28def0" :box (:line-width (1 . 1) :color "grey75" :style released-button)))))
 '(org-habit-alert-face ((t (:background "gold" :foreground "black"))))
 '(org-habit-alert-future-face ((t (:background "darkgoldenrod" :foreground "black"))))
 '(org-scheduled-previously ((t (:foreground "MediumOrchid4" :slant italic))))
 '(org-tag ((t (:foreground "#9f8766" :inverse-video t :box (:line-width (2 . 2) :color "grey75" :style flat-button)))))
 '(org-upcoming-distant-deadline ((t (:inherit org-priority :foreground "gold"))))
 '(org-verbatim ((t (:foreground "#4f97d7" :box (:line-width (1 . 1) :color "grey75" :style released-button))))))

;;; ------------------------ 必要配置 ---------------------------
;; use-package
(require 'use-package)
(set-language-environment "UTF-8")

;; (pixel-scroll-mode t)
;; (pixel-scroll-precision-mode t)
(setq file-name-coding-system 'gbk)
                                        ; (Maybe...?)解决中文路径乱码
;; dired
(setq dired-listing-switches "-al --group-directories-first")
;; Enable dired-find-alternate-file.
(put 'dired-find-alternate-file 'disabled nil)

;; 鼠标滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;;; ------------------------ 美化相关 ---------------------------
;; tabline mode
(global-tab-line-mode 1)
;; Prevent some modes from not showing up.
;; https://emacs.stackexchange.com/a/76797/38412
(setq tab-line-exclude-modes '(completion-list-mode ibuffer-mode messages-buffer-mode))

(defun zeit/buffer-skip-p (buffer)
  ;; Adapted from https://emacs.stackexchange.com/a/72778/38412
  "Return t if BUFFER name matches some regexps."
  (or
   ;; Regexp to ignore buffers.
   (string-match-p (rx bos (or (or "*Backtrace*" "*Compile-Log*"
                                   "*Completions*" "*Messages*"
                                   "*package*" "*Warnings*"
                                   "*Calendar*"
                                   "*Async-native-compile-log*"
                                   "*Ibuffer*" "*Calculator*"
                                   )
                               (seq "magit-diff" (zero-or-more anything))
                               (seq "magit-process" (zero-or-more anything))
                               (seq "magit-revision" (zero-or-more anything))
                               (seq "magit-stash" (zero-or-more anything)))
                       eos)
                   (buffer-name buffer))
   ))

(defun zeit/tab-line-tabs-window-buffers ()
  "Return a list of tabs that should be displayed in the tab line.
By default returns a list of window buffers, i.e. buffers previously
shown in the same window where the tab line is displayed.
This list can be overridden by changing the default value of the
variable `tab-line-tabs-function'."
  (let* ((window (selected-window))
         (buffer (window-buffer window))
         (next-buffers (seq-remove (lambda (b) (eq b buffer))
                                   (window-next-buffers window)))
         (next-buffers (seq-filter #'buffer-live-p next-buffers))
         (prev-buffers (seq-remove (lambda (b) (eq b buffer))
                                   (mapcar #'car (window-prev-buffers window))))
         (prev-buffers (seq-filter #'buffer-live-p prev-buffers))
         ;; Remove next-buffers from prev-buffers
         (prev-buffers (seq-difference prev-buffers next-buffers))
         (ret-buffers (append (reverse prev-buffers)
                              (list buffer)
                              next-buffers))
         (ret-buffers (seq-remove (lambda (b) (zeit/buffer-skip-p b))
                                  ret-buffers))
         )
    ret-buffers
    ))

(setq tab-line-tabs-function #'zeit/tab-line-tabs-window-buffers)
(defun zeit/buffer--window-skip-p (window buffer bury-or-kill)
  "Return t if BUFFER name matches some regexps."
  (zeit/buffer-skip-p buffer))
(setq switch-to-prev-buffer-skip #'zeit/buffer--window-skip-p)

;; 字体配置
(when
    (member "Segoe UI Emoji"
            (font-family-list))
  (set-fontset-font
   t 'unicode
   (font-spec :family "Segoe UI Emoji")
   nil 'prepend))
;; 子弹缩进
(use-package org-bullets
  :defer t
  :hook org-mode
  :load-path "~/.emacs.d/myscripts/org-bullets")

;; 开启文本缩进
(setq org-startup-indented t)
;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)
;; 自动换行开启与关闭
(global-visual-line-mode 1)
(add-hook 'ibuffer-mode-hook
          (lambda
            ()
            (visual-line-mode -1)
            (toggle-truncate-lines 1)))
(add-hook 'bookmark-bmenu-mode-hook
          (lambda
            ()
            (visual-line-mode -1)
            (toggle-truncate-lines 1)))
(add-hook 'dired-mode-hook
          (lambda
            ()
            (visual-line-mode -1)
            (toggle-truncate-lines 1)))
(add-hook 'sh-mode-hook
          (lambda
            ()
            (visual-line-mode -1)
            (toggle-truncate-lines 1)))
;; 开启shift-selection
(setq org-support-shift-select t)
(delete-selection-mode 1)
;; 开启行内图片
(setq org-startup-with-inline-images t)
(setq org-cycle-inline-images-display t)
(setq org-image-actual-width nil)
;; 显示文件大小
(setq size-indication-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
;; markup相关
(setq org-hide-emphasis-markers t)
;; (add-hook 'org-mode-hook 'org-appear-mode) ; 开启org-appear
(use-package org-appear
  :defer t
  :hook org-mode)

;;; ------------------------- 个人习惯 ---------------------------
;; 开启zotxt-mode
(use-package org-zotxt
  :defer t
  :hook org-mode)
;; (add-hook 'org-mode-hook
;;           (lambda
;;             ()
;;             (org-zotxt-mode 1)))

;; 自动Time Stamp
(add-hook 'before-save-hook 'time-stamp)
(setq time-stamp-line-limit 20)

;; 开启Evil模式
(setq evil-want-C-i-jump nil)           ; 恢复orgmode的<tab>功能
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)       ; 启用redo
(setq evil-want-fine-undo t)            ; 启发式undo，避免一下全部撤销
(setq evil-kill-on-visual-paste nil)    ; 取消将覆盖文本复制到剪贴板

(evil-set-initial-state 'bookmark-bmenu-mode 'normal)
                                        ; 在bookmark menu中开启evil
(evil-set-initial-state 'ibuffer-mode 'normal)
                                        ; 在ibuffer中开启evil
(evil-set-initial-state 'org-agenda-mode 'normal)
                                        ; 在agenda中开启evil
(evil-set-initial-state 'magit-status-mode 'normal)
                                        ; 在magit中开启evil
(evil-set-initial-state 'magit-log-mode 'normal)
                                        ; 在magit中开启evil
(evil-set-initial-state 'magit-revision-mode 'normal)
                                        ; 在magit中开启evil
(evil-set-initial-state 'magit-diff-mode 'normal)
                                        ; 在magit中开启evil
(evil-set-initial-state 'magit-process-mode 'normal)
                                        ; 在magit中开启evil
(evil-set-initial-state 'completion-list-mode 'normal)
                                        ; 在Completion中开启evil
(evil-set-initial-state 'help-mode 'normal)
                                        ; 在Help中开启evil
(evil-set-initial-state 'recentf-dialog-mode 'normal)
                                        ; 在recentf list中开启evil
(evil-set-initial-state 'markdown-mode 'normal)
                                        ; 在recentf list中开启evil
;; 重定义evil中的'q'
(defun zeit/evil-record-macro
    ()
  "Borrowed from https://emacs.stackexchange.com/a/38364/38412"
  (interactive)
  (if buffer-read-only
      (quit-window)
    (call-interactively 'evil-record-macro)))
(with-eval-after-load 'evil-maps
  (define-key evil-normal-state-map
              (kbd "q")
              'zeit/evil-record-macro)
  (define-key evil-normal-state-map (kbd "RET") nil) ; Cancel evil-ret
  (define-key evil-motion-state-map (kbd "RET") nil) ; Cancel evil-ret
  )

(setq evil-ex-visual-char-range t)
                                        ; visual模式下自动打开`<,`>
                                        ; Ref: https://stackoverflow.com/questions/27125661/emacs-evil-mode-replace-only-in-visual-selection-visual-block#comment42803881_27135843

;; 自动半最大化
(if
    (> (length (display-monitor-attributes-list)) 1)
    (setq default-frame-alist ; 在第三屏打开
          '((fullscreen . maximized)
            (left . -3800)
            (top . -1296)))
  (setq default-frame-alist ; 在主屏打开
        '((fullscreen . maximized))))
          ;; (left . 0)
          ;; (top . 0))))

;; 表格自动对齐和折叠
(setq org-startup-align-all-tables t)
(setq org-startup-shrink-all-tables t)
;; 在行尾换行
(setq org-M-RET-may-split-line
      '((default . nil)))
;; 开启agenda
(require 'org-agenda)
                                        ; 否则无法重映射agenda下的快捷键

;; 跳转支持补全
(setq org-goto-interface 'outline-path-completion)
;; bookmark设置
(setq bookmark-menu-confirm-deletion t)
                                        ; 删除书签前确认
(setq bookmark-save-flag 1)
                                        ; everytime bookmark is changed, automatically save it
(setq bookmark-default-file "~/.emacs.d/forOrgs/.bookmarks")
(add-hook 'bookmark-after-jump-hook (lambda () (evil-set-marker (string-to-char bookmark-current-bookmark))))

;; 鼠标相关
(setq org-cycle-emulate-tab nil)
                                        ; 取消单击缩进
;; 开启链接模糊搜索
(setq org-link-search-must-match-exact-headline nil)

;; 开启图片拖拽 (Drag & Drop)
;; (require 'org-download)
;; (setq org-download-timestamp "")
;; (add-hook 'org-mode-hook 'org-download-enable)
(defun zeit/org-download-annotate (link)
  "Annotate LINK with the time of download."
  (format "#+attr_html: :width 80%\n#+caption: %s\n" (file-name-nondirectory link)))
;; (setq org-download-annotate-function #'zeit/org-download-annotate)
(use-package org-download
  ;; :defer t
  :config
  (add-hook 'org-mode-hook 'org-download-enable)
  (setq org-download-timestamp "")
  (setq org-download-annotate-function #'zeit/org-download-annotate)
  )

;; 开启回车跳转链接
(setq org-return-follows-link t)


;;; ------------------------- 快捷键重映射 ---------------------------
;; >>>>>>>>>>>>>>> global <<<<<<<<<<<<<<<<<<<<<<<
(define-key key-translation-map (kbd "M-q") (kbd "C-g")) ; Map 'M-q' -> 'C-g'
(keymap-global-set "<f3>" nil) ; Unmap F3
(keymap-global-set "<f2>" nil) ; Unmap F2

(global-set-key (kbd "C-c f") 'fill-paragraph) ; 自动换行填充
(global-set-key (kbd "C-c m") 'compose-mail) ; 写邮件
(global-set-key (kbd "C-c z") 'calendar) ; 日历
(global-set-key (kbd "C-c r") 'project-find-regexp) ; 在项目中搜索
(global-set-key
 (kbd "C-<tab>")
 'next-buffer)
                                        ; Buffer切换
(global-set-key
 (kbd "C-S-<tab>")
 'previous-buffer)
(global-set-key
 (kbd "C-c a")
 'org-agenda)
                                        ; 打开Agenda
(global-set-key
 (kbd "C-c e")
 'org-encrypt-entry)
                                        ; 加密
(global-set-key
 (kbd "C-c d")
 'org-decrypt-entry)
                                        ; 解密
(global-set-key
 (kbd "C-x r")
 'counsel-recentf)
                                        ; 打开最近文件
(global-set-key
 (kbd "C-c j")
 'org-goto)
                                        ; 跳转
(global-set-key
 (kbd "<f5>")
 'revert-buffer)
                                        ; 刷新文件
(global-set-key
 (kbd "C-c 5")
 (kbd "C-u C-c #"))
                                        ; 全局更新完成度
(global-set-key
 (kbd "C--")
 'text-scale-adjust)
                                        ; 调整字体
(global-set-key
 (kbd "C-=")
 'text-scale-adjust)
                                        ; 调整字体
(global-set-key
 (kbd "M-:")
 'kill-buffer-and-window)
                                        ; 关闭当前窗口及其buffer
(global-set-key
 (kbd "M-f")
 'evil-find-char)
                                        ; vim的f功能
(global-set-key
 (kbd "M-r")
 'evil-redo)
                                        ; 重做
(global-set-key
 (kbd "M-s")
 'save-buffer)
                                        ; 保存
(global-set-key
 (kbd "M-q")
 'keyboard-escape-quit)
                                        ; ESC ESC ESC
(global-set-key
 (kbd "M-<")
 'org-insert-structure-template)
                                        ; 插入template
(defun backward-kill-char-or-word
    ()
  "Adopted from https://emacs.stackexchange.com/questions/30401/backward-kill-word-kills-too-much-how-to-make-it-more-intelligent"
  (interactive)
  (cond
   ((looking-back
     (rx
      (char word))
     1)
    (backward-kill-word 1))
   ((looking-back
     (rx
      (char blank))
     1)
    (delete-horizontal-space t))
   (t
    (backward-delete-char 1)))
  )
(global-set-key
 (kbd "C-<backspace>")
 'backward-kill-char-or-word)
                                        ; 前向删除
(global-set-key
 (kbd "C-c c")
 'org-capture)                          ; org-capture

(global-set-key
 (kbd "<wheel-up>")
 (lambda
   ()
   (interactive)
   (evil-scroll-line-up 1)))
                                        ; 向上滚轮
(global-set-key
 (kbd "<wheel-down>")
 (lambda
   ()
   (interactive)
   (evil-scroll-line-down 1)))
                                        ; 向下滚轮

; 切换至minibuffer
(defun zeit/switch-to-minibuffer ()
  "Switch to minibuffer window. Borrowed from: https://emacs.stackexchange.com/a/42288/38412"
  (interactive)
  (if (active-minibuffer-window)
      (select-window (active-minibuffer-window))
    (error "Minibuffer is not active")))
(global-set-key "\C-co" 'zeit/switch-to-minibuffer)

;; icomplete minibuffer
(icomplete-mode t)
(define-key icomplete-minibuffer-map (kbd "<tab>") #'icomplete-force-complete)
(define-key icomplete-minibuffer-map (kbd "<return>") #'icomplete-force-complete-and-exit)
(define-key icomplete-minibuffer-map (kbd "<right>") #'icomplete-forward-completions)
(define-key icomplete-minibuffer-map (kbd "<left>") #'icomplete-backward-completions)

;; >>>>>>>>>>>>>>> define-key <<<<<<<<<<<<<<<<<<<<<<<
;; Isearch
(define-key isearch-mode-map (kbd "M-i") 'isearch-edit-string)
(define-key isearch-mode-map (kbd "<up>") 'isearch-edit-string)

;; Evil: Vim的一些微调
(define-key evil-normal-state-map
            (kbd "C-a")
            'mark-whole-buffer)         ; 全选
(define-key evil-visual-state-map
            (kbd "C-a")
            'mark-whole-buffer)         ; 全选
(define-key evil-insert-state-map
            (kbd "C-a")
            'mark-whole-buffer)         ; 全选
(define-key evil-normal-state-map
            (kbd "M-I")
            'magit-status)              ; 打开magit
(define-key evil-normal-state-map
            (kbd "M-u")
            'evil-scroll-up)
(define-key evil-visual-state-map
            (kbd "M-u")
            'evil-scroll-up)
(define-key evil-insert-state-map
            (kbd "M-u")
            'evil-scroll-up)
(define-key evil-motion-state-map
            (kbd "M-u")
            'evil-scroll-up)
(define-key evil-normal-state-map
            (kbd "M-U")
            (lambda
              ()
              (interactive)
              (evil-scroll-line-up 3)))
;; 向上滚屏
(define-key evil-visual-state-map
            (kbd "M-U")
            (lambda
              ()
              (interactive)
              (evil-scroll-line-up 3)))
;; 向上滚屏
(define-key evil-insert-state-map
            (kbd "M-U")
            (lambda
              ()
              (interactive)
              (evil-scroll-line-up 3)))
;; 向上滚屏
(define-key evil-normal-state-map
            (kbd "M-d")
            'evil-scroll-down)
(define-key evil-visual-state-map
            (kbd "M-d")
            'evil-scroll-down)
(define-key evil-insert-state-map
            (kbd "M-d")
            'evil-scroll-down)
(define-key evil-motion-state-map
            (kbd "M-d")
            'evil-scroll-down)
(define-key evil-normal-state-map
            (kbd "M-D")
            (lambda
              ()
              (interactive)
              (evil-scroll-line-down 3)))
;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-visual-state-map
            (kbd "M-D")
            (lambda
              ()
              (interactive)
              (evil-scroll-line-down 3)))
;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-insert-state-map
            (kbd "M-D")
            (lambda
              ()
              (interactive)
              (evil-scroll-line-down 3)))
;; 向下滚屏，大写D其实包含Shift+d
(define-key evil-normal-state-map
            (kbd "gx")
            'org-open-at-point)
;; 链接跳转
(with-eval-after-load 'dired
  (evil-define-key 'normal dired-mode-map
    (kbd "<return>")
    (lambda () (interactive)
      (dired-find-file)
      (unless (with-current-buffer (current-buffer)
                (derived-mode-p 'dired-mode))
        ;; Kill dired buffers if enter a file.
        (zeit/kill-dired-buffers t)))
    (kbd "q")
    (lambda () (interactive) (zeit/kill-dired-buffers t))
    (kbd "K")
    'next-buffer
    (kbd "J")
    'previous-buffer
    (kbd "H")
    'dired-up-directory
    (kbd "L")
    'kill-buffer-and-window  ;; so that works like go "forth"
    (kbd "t")
    'find-file
    (kbd "o")
    'dired-create-directory
    (kbd "d")
    'dired-do-delete
    (kbd "gg")
    'evil-goto-first-line
    (kbd "G")
    'evil-goto-line
    (kbd "r")
    'revert-buffer
    (kbd "0")
    'evil-beginning-of-line
    (kbd "$")
    'evil-end-of-line
    (kbd "i")
    'dired-toggle-read-only
    (kbd "A")
    (lambda () (interactive) (dired-toggle-read-only) (move-end-of-line nil))
    (kbd "n")
    'evil-search-next
    (kbd "N")
    'evil-search-previous
    (kbd "y")
    (lambda () (interactive) (let ((current-prefix-arg '(0))) (call-interactively 'dired-copy-filename-as-kill)))
    )
  (evil-define-key 'insert wdired-mode-map
    (kbd "<escape>")
    (lambda () (interactive) (wdired-abort-changes) (evil-normal-state))
    (kbd "<return>")
    (lambda () (interactive) (wdired-finish-edit) (evil-normal-state))
    )
  )

;; Markdown
(with-eval-after-load 'markdown-mode
  (key-seq-define-evil '(normal visual motion) markdown-mode-map ";;" 'markdown-toggle-markup-hiding)
  )

;; 链接跳转
(with-eval-after-load 'help
  (evil-make-overriding-map help-mode-map 'normal t)
  (evil-define-key 'normal help-mode-map
    (kbd "H")
    'help-go-back
    (kbd "L")
    'help-go-forward
    (kbd "h")
    'evil-backward-char
    (kbd "l")
    'evil-forward-char
    (kbd "j")
    'evil-next-line
    (kbd "k")
    'evil-previous-line
    (kbd "gg")
    'evil-goto-first-line
    (kbd "G")
    'evil-goto-line
    (kbd "<return>")
    'push-button
    (kbd "<")
    'help-goto-previous-page
    (kbd ">")
    'help-goto-next-page
    (kbd "n")
    'evil-search-next
    )
  )
                                        ; Help buffer下的快捷键 ref: https://github.com/syl20bnr/spacemacs/issues/2490#issuecomment-131660583
(evil-define-key 'normal emacs-lisp-mode-map
  (kbd "<return>")
  'find-function-at-point
  )
;; 函数跳转
(evil-define-key 'normal org-agenda-mode-map
  (kbd "gx")
  'org-agenda-goto
  (kbd "<return>")
  'org-agenda-goto
  (kbd "r")
  'org-agenda-redo
  (kbd "d")
  'org-agenda-day-view
  (kbd "w")
  'org-agenda-week-view
  (kbd "m")
  'org-agenda-month-view
  (kbd "y")
  'org-agenda-year-view
  (kbd "H")
  'org-agenda-earlier
  (kbd "L")
  'org-agenda-later
  (kbd ".")
  'org-agenda-goto-today
  (kbd "v")
  'org-agenda-view-mode-dispatch
  (kbd "q")
  'org-agenda-quit
  )
;; agenda模式下的快捷键
(evil-define-key 'normal magit-mode-map
  (kbd "d")
  'magit-discard
  (kbd "u")
  'magit-unstage
  (kbd "U")
  'magit-unstage-all
  (kbd "m")
  'magit-merge
  (kbd "s")
  'magit-stage-file
  (kbd "S")
  'magit-stage-modified
  (kbd "r")
  'magit-refresh
  (kbd "R")
  'magit-refresh-all
  (kbd "i")
  'magit-gitignore
  (kbd "I")
  'magit-init
  (kbd "c")
  'magit-commit
  (kbd "p")
  'magit-pull
  (kbd "P")
  'magit-push
  (kbd "L")
  'magit-log
  (kbd "q")
  'magit-mode-bury-buffer
  (kbd "<return>")
  'magit-visit-thing
  (kbd "<down>")
  'magit-section-forward
  (kbd "<up>")
  'magit-section-backward
  )
;; magit status下的快捷键
(evil-define-key 'normal outline-mode-map
  (kbd "<down>")
  'org-next-visible-heading
  ;; (kbd "<down>") 'org-forward-heading-same-level
  (kbd "<up>")
  'org-previous-visible-heading
  ;; (kbd "<up>") 'org-backward-heading-same-level
  (kbd "<left>")
  'outline-up-heading
  (kbd "<right>")
  'org-forward-heading-same-level
  )
;; heading间移动
(evil-define-key 'normal bookmark-bmenu-mode-map
  (kbd "r")
  'bookmark-bmenu-rename
  (kbd "w")
  'bookmark-bmenu-locate
  (kbd "<return>")
  'bookmark-bmenu-this-window
  (kbd "o")
  'bookmark-bmenu-other-window
  (kbd "d")
  (lambda
    ()
    (interactive)
    (bookmark-bmenu-delete)
    (bookmark-bmenu-execute-deletions))
  )
;; bookmark bmenu下的快捷键
(evil-define-key 'normal ibuffer-mode-map
  (kbd "r")
  'ibuffer-redisplay
  (kbd "l")
  'evil-forward-char
  (kbd "h")
  'evil-backward-char
  (kbd "<return>")
  'ibuffer-visit-buffer-1-window
  (kbd "<RET>")
  'ibuffer-visit-buffer-1-window
  (kbd "o")
  'ibuffer-visit-buffer-other-window
  (kbd "d")
  'ibuffer-do-delete
  )
;; ibuffer下的快捷键
(evil-define-key 'normal lisp-interaction-mode-map
  (kbd "q")
  'quit-window
  )
;; scratch buffer下的快捷键

(evil-define-key 'normal recentf-dialog-mode-map
  (kbd "j")
  'next-line
  (kbd "k")
  'previous-line
  (kbd "q")
  'recentf-cancel-dialog
  (kbd "<return>")
  'widget-button-press
  )
;; recentf list下的快捷键

;; Image mode快捷键

(with-eval-after-load 'image-mode
  (evil-make-overriding-map image-mode-map 'normal t)
  (evil-define-key 'normal image-mode-map
    (kbd "<left>")
    'image-previous-file
    (kbd "<up>")
    'image-previous-file
    (kbd "<right>")
    'image-next-file
    (kbd "<down>")
    'image-next-file
    (kbd "=")
    'image-increase-size
    (kbd "-")
    'image-decrease-size
    (kbd "j")
    'image-scroll-down
    (kbd "k")
    'image-scroll-up
    ;; @fixme
    (kbd "h")
    'image-scroll-left
    (kbd "l")
    'image-scroll-right
    )
  )


(define-key evil-motion-state-map
            (kbd "K")
            nil)
;; 取消大写k
(define-key evil-normal-state-map
            (kbd "K")
            'next-buffer)
;; Buffer切换
(define-key evil-visual-state-map
            (kbd "K")
            'next-buffer)
(define-key evil-motion-state-map
            (kbd "K")
            'next-buffer)
(define-key evil-normal-state-map
            (kbd "J")
            nil)
;; 取消大写j
(define-key evil-normal-state-map
            (kbd "J")
            'previous-buffer)
;; Buffer切换
(define-key evil-visual-state-map
            (kbd "J")
            'previous-buffer)
(define-key evil-motion-state-map
            (kbd "J")
            'previous-buffer)
(defun zeit/tab
    ()
  "Disable tab indent in table."
  (interactive)
  (if
      (not
       (org-at-table-p))
      (tab-to-tab-stop)
    (org-cycle)))
(define-key evil-insert-state-map
            (kbd "<tab>")
            'zeit/tab)
                                        ; 插入模式下恢复tab
(define-key evil-insert-state-map
            (kbd "C-v")
            'org-yank)
                                        ; 插入模式下恢复C-v
(define-key evil-insert-state-map
            (kbd "C-c")
            'evil-yank)
                                        ; 插入模式下恢复C-c
(define-key evil-insert-state-map
            (kbd "C-z")
            'evil-undo)
                                        ; 插入模式下恢复C-z
(define-key evil-insert-state-map
            (kbd "<left>")
            'backward-char)
                                        ; 插入模式下恢复shift
(define-key evil-insert-state-map
            (kbd "<right>")
            'forward-char)
                                        ; 插入模式下恢复shift
(define-key evil-insert-state-map
            (kbd "S-<left>")
            nil)
                                        ; 插入模式下恢复shift
(define-key evil-insert-state-map
            (kbd "S-<right>")
            nil)
                                        ; 插入模式下恢复shift
(define-key minibuffer-local-map
            (kbd "C-v")
            'org-yank)
(define-key isearch-mode-map
            (kbd "C-v")
            'isearch-yank-kill)         ; isearch中恢复C-v
                                        ; minibuffer中恢复C-v
(define-key minibuffer-local-map
            (kbd "C-c")
            'evil-yank)
                                        ; minibuffer中恢复C-c
(define-key minibuffer-local-map
            (kbd "C-z")
            'evil-undo)
                                        ; minibuffer中恢复C-z
(define-key evil-normal-state-map
            (kbd "M-S-<return>")
            (kbd "$ a M-S-<return> <escape>"))
                                        ; normal模式org-insert-todo-heading
(define-key evil-normal-state-map
            (kbd "|")
            (lambda
              ()
              (interactive)
              (split-window-below)
              (other-window 1)))
                                        ; 横向分割
(define-key evil-motion-state-map
            (kbd "|")
            (lambda
              ()
              (interactive)
              (split-window-below)
              (other-window 1)))
                                        ; 横向分割
(define-key evil-normal-state-map
            (kbd "\\")
            (lambda
              ()
              (interactive)
              (split-window-right)
              (other-window 1)))
                                        ; 竖向分割
(define-key evil-motion-state-map
            (kbd "\\")
            (lambda
              ()
              (interactive)
              (split-window-right)
              (other-window 1)))
                                        ; 竖向分割
(define-key evil-normal-state-map
            (kbd "M-F")
            'indent-region)
                                        ; 自动缩进
(define-key evil-motion-state-map
            (kbd "M-F")
            'indent-region)
                                        ; 自动缩进
(define-key evil-visual-state-map
            (kbd "M-F")
            'indent-region)
                                        ; 自动缩进
(define-key evil-normal-state-map
            (kbd "M-/")
            'comment-line)
                                        ; 注释
(define-key evil-motion-state-map
            (kbd "M-/")
            'comment-line)
                                        ; 注释
(define-key evil-visual-state-map
            (kbd "M-/")
            'comment-line)
                                        ; 注释
(define-key evil-insert-state-map
            (kbd "M-/")
            'comment-line)
                                        ; 注释
(define-key evil-normal-state-map
            (kbd "M-?")
            'evil-toggle-fold)
                                        ; 折叠
(define-key evil-motion-state-map
            (kbd "M-?")
            'evil-toggle-fold)
                                        ; 折叠
(define-key evil-visual-state-map
            (kbd "M-?")
            'evil-toggle-fold)
                                        ; 折叠
(define-key evil-insert-state-map
            (kbd "M-?")
            'evil-toggle-fold)
                                        ; 折叠
;; (define-key evil-insert-state-map
;;             (kbd "M-n")
;;             'org-metadown)
;;                                         ; 将项目下移
;; (define-key evil-insert-state-map
;;             (kbd "M-N")
;;             'org-metaup)
;;                                         ; 将项目上移
;; (define-key evil-insert-state-map
;;             (kbd "M-i")
;;             'org-shiftmetaright)
;;                                         ; 将项目右移
;; (define-key evil-insert-state-map
;;             (kbd "M-I")
;;             'org-shiftmetaleft)
;;                                         ; 将项目左移
(define-key evil-normal-state-map
            (kbd "M-I")
            'magit-status)
                                        ; 打开magit
(define-key evil-insert-state-map
            (kbd "M-i")
            'dabbrev-expand)
                                        ; 自动扩展词
(define-key evil-insert-state-map
            (kbd "M-I")
            (lambda () (interactive) (dabbrev-expand -1)))
                                        ; 自动扩展词(向前)
(define-key evil-normal-state-map
            (kbd "M-S")
            'save-some-buffers)
                                        ; 保存全部文件
(define-key evil-motion-state-map
            (kbd "M-S")
            'save-some-buffers)
                                        ; 保存全部文件
(define-key evil-visual-state-map
            (kbd "M-S")
            'save-some-buffers)
                                        ; 保存全部文件
(define-key evil-normal-state-map
            (kbd "M-,")
            'org-metaleft)
                                        ; 将项目左移
(define-key evil-motion-state-map
            (kbd "M-,")
            'org-metaleft)
                                        ; 将项目左移
(define-key evil-visual-state-map
            (kbd "M-,")
            'org-metaleft)
                                        ; 将项目左移
(define-key evil-normal-state-map
            (kbd "M-.")
            'org-metaright)
                                        ; 将项目右移
(define-key evil-motion-state-map
            (kbd "M-.")
            'org-metaright)
                                        ; 将项目右移
(define-key evil-visual-state-map
            (kbd "M-.")
            'org-metaright)
                                        ; 将项目右移
(define-key evil-normal-state-map
            (kbd "M-o")
            'org-mark-ring-goto)
                                        ; 回到上次操作的地方
(define-key evil-insert-state-map
            (kbd "M-o")
            'evil-open-below)
                                        ; 添加新行在下方
(define-key evil-insert-state-map
            (kbd "M-O")
            'evil-open-above)
                                        ; 添加新行在上方
(define-key evil-insert-state-map
            (kbd "M-~")
            'org-emphasize)
                                        ; markup
(define-key evil-insert-state-map
            (kbd "M-`")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\~)))
                                        ; markup "~"
(define-key evil-normal-state-map
            (kbd "M-`")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\~)))
                                        ; markup "~"
(define-key evil-motion-state-map
            (kbd "M-`")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\~)))
                                        ; markup "~"
(define-key evil-insert-state-map
            (kbd "M-9")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\=)))
                                        ; markup "="
(define-key evil-normal-state-map
            (kbd "M-9")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\=)))
                                        ; markup "="
(define-key evil-motion-state-map
            (kbd "M-9")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\=)))
                                        ; markup "="
(define-key evil-visual-state-map
            (kbd "*")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\*)))
                                        ; markup "*"
(define-key evil-visual-state-map
            (kbd "=")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\=)))
                                        ; markup "="
(define-key evil-insert-state-map
            (kbd "C-/")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\/)))
                                        ; markup "/"
(define-key evil-normal-state-map
            (kbd "C-/")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\/)))
                                        ; markup "/"
(define-key evil-motion-state-map
            (kbd "C-/")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\/)))
                                        ; markup "/"
(define-key evil-visual-state-map
            (kbd "/")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\/)))
                                        ; markup "/"
(define-key evil-visual-state-map
            (kbd "+")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\+)))
                                        ; markup "+"
(define-key evil-visual-state-map
            (kbd "_")
            (lambda
              ()
              (interactive)
              (org-emphasize ?\_)))
                                        ; markup "_"
(define-key evil-normal-state-map
            (kbd "M")
            'bookmark-set)
                                        ; 添加书签
(define-key evil-motion-state-map
            (kbd "M")
            'bookmark-set)
                                        ; 添加书签
(define-key evil-normal-state-map
            (kbd "M-m")
            'bookmark-bmenu-list)
                                        ; 显示所有书签
(define-key evil-motion-state-map
            (kbd "M-m")
            'bookmark-bmenu-list)
                                        ; 显示所有书签
(defun zeit/set-mark(CHAR &optional POS ADVANCE)
  "Set mark in both evil and bookmark."
  (interactive
   (list
    (read-char)))
  (let
      ((schar
        (single-key-description CHAR)))
    (bookmark-set schar)
    (evil-set-marker CHAR POS ADVANCE)
    (message "Mark set and saved as \"%s\"" schar)))
(define-key evil-normal-state-map
            (kbd "m")
            'zeit/set-mark)
                                        ; 添加书签
(define-key evil-motion-state-map
            (kbd "m")
            'zeit/set-mark)
                                        ; 添加书签
(define-key evil-insert-state-map
            (kbd "M-P")
            'org-set-property)
                                        ; 设置属性
(define-key evil-insert-state-map
            (kbd "M-]")
            'org-metaright)
                                        ; 将项目右移(但不影响子项目)
(define-key evil-insert-state-map
            (kbd "M-[")
            'org-metaleft)
                                        ; 将项目左移(但不影响子项目)
(define-key evil-normal-state-map
            (kbd "M-[")
            'zeit/enlarge-or-shiftmetaleft)
                                        ; 竖向增大窗口or表格列左移
(define-key evil-motion-state-map
            (kbd "M-[")
            'enlarge-window)
                                        ; 竖向增大窗口
(define-key evil-normal-state-map
            (kbd "M-]")
            'zeit/shrink-or-shiftmetaright)
                                        ; 竖向压缩窗口or表格列右移
(define-key evil-motion-state-map
            (kbd "M-]")
            'shrink-window)
                                        ; 竖向压缩窗口
(define-key evil-normal-state-map
            (kbd "M-{")
            'zeit/enlarge-or-shiftmetaup)
                                        ; 横向扩大窗口or表格行上移
(define-key evil-motion-state-map
            (kbd "M-{")
            'enlarge-window-horizontally)
                                        ; 横向扩大窗口
(define-key evil-normal-state-map
            (kbd "M-}")
            'zeit/shrink-or-shiftmetadown)
                                        ; 横向压缩窗口or表格行下移
(define-key evil-motion-state-map
            (kbd "M-}")
            'shrink-window-horizontally)
                                        ; 横向压缩窗口
;; 使用key-chord快捷键
;; >>>>>>>>>>>>>>> key-seq-define <<<<<<<<<<<<<<<<<<<<<<<
(add-to-list 'load-path "~/.emacs.d/myscripts/key-chord")
(add-to-list 'load-path "~/.emacs.d/myscripts-dev/key-seq")
(require 'key-chord)
(require 'key-seq)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.1)
(setq key-chord-safety-interval-forward 0.1)
(key-seq-define evil-normal-state-map "vc" 'evil-visual-block)
                                        ; 块可视模式
(key-seq-define evil-visual-state-map "vc" 'evil-visual-block)
                                        ; 块可视模式
(key-seq-define evil-motion-state-map "vc" 'evil-visual-block)
                                        ; 块可视模式
(key-seq-define evil-normal-state-map "zo" 'other-window)
                                        ; 切换其他窗口
(key-seq-define evil-motion-state-map "zo" 'other-window)
                                        ; 切换其他窗口
(key-seq-define evil-normal-state-map ";4" 'switch-to-buffer-other-window)
                                        ; 在当前窗口打开buffer
(key-seq-define evil-motion-state-map ";4" 'switch-to-buffer-other-window)
                                        ; 在当前窗口打开buffer
(key-seq-define evil-normal-state-map ";1" 'delete-other-windows)
                                        ; 关闭其他窗口
(key-seq-define evil-motion-state-map ";1" 'delete-other-windows)
                                        ; 关闭其他窗口
(key-seq-define evil-normal-state-map "zi" 'delete-window)
                                        ; 关闭当前窗口
(key-seq-define evil-motion-state-map "zi" 'delete-window)
                                        ; 关闭当前窗口
(key-seq-define evil-normal-state-map ";a" 'org-agenda)
                                        ; 打开Agenda
(key-seq-define evil-normal-state-map ";r" 'counsel-recentf)
                                        ; 打开最近文件
(key-seq-define evil-motion-state-map ";r" 'counsel-recentf)
                                        ; 打开最近文件
(key-seq-define evil-normal-state-map ";e" 'recentf-edit-list)
                                        ; 编辑最近文件列表
(key-seq-define evil-motion-state-map ";e" 'recentf-edit-list)
                                        ; 编辑最近文件列表
(key-seq-define evil-normal-state-map ";f" 'dired-jump)
                                        ; 查找文件
(key-seq-define evil-motion-state-map ";f" 'dired-jump)
                                        ; 查找文件
(key-seq-define evil-normal-state-map ";b" (lambda ()
                                             (interactive)
                                             (ibuffer t)))
                                        ; 展示buffers
(key-seq-define evil-motion-state-map ";b"
                (lambda
                  ()
                  (interactive)
                  (select-window
                   (list-buffers))))
                                        ; 展示buffers
(key-seq-define evil-normal-state-map "[["
                (kbd "o <escape> P"))
                                        ; 在下一行粘贴
(key-seq-define evil-motion-state-map "[["
                (kbd "o <escape> P"))
                                        ; 在下一行粘贴
(key-seq-define evil-visual-state-map "zn" 'narrow-to-region)
                                        ; C-x n n
(key-seq-define evil-normal-state-map "zw" 'widen)
                                        ; C-x n w
(key-seq-define evil-normal-state-map ";n" 'org-capture) ; org capture
(key-seq-define evil-visual-state-map ";n" 'org-capture) ; org capture
(key-seq-define evil-motion-state-map ";n" 'org-capture) ; org capture
(key-seq-define evil-normal-state-map "zt" 'org-time-stamp)
                                        ; 插入时间戳
(key-seq-define evil-motion-state-map "zt" 'org-time-stamp)
                                        ; 插入时间戳
(key-seq-define evil-visual-state-map "zt" 'org-time-stamp)
                                        ; 插入时间戳
(key-seq-define evil-normal-state-map "zu" 'org-export-dispatch)
                                        ; org导出
(key-seq-define evil-normal-state-map ";q" 'read-only-mode) ; 切换只读模式
(key-seq-define evil-normal-state-map "zb" 'transpose-sexps) ; Transpose(调换字符串顺序)
(key-seq-define evil-visual-state-map "zb" 'transpose-sexps) ; Transpose(调换字符串顺序)
(key-seq-define evil-normal-state-map ";d" 'load-file) ; load-file

;; OrgMode specific keychords.
(with-eval-after-load 'org
  (add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images) ; 运行src block后自动刷新行内图片
  (evil-define-key 'normal org-mode-map
    (kbd "RET")
    'org-open-at-point
    )
  (evil-define-key '(normal visual insert) org-mode-map
    (kbd "C-c y") 'zeit/org-ctrl-c-y)
  (evil-define-key '(normal visual insert) org-mode-map
    (kbd "C-c p") 'zeit/org-ctrl-c-p)
  (evil-define-key '(normal visual insert) org-mode-map
    (kbd "C-c SPC") 'zeit/org-ctrl-c-space)
  (evil-define-key '(normal) org-mode-map
    (kbd "SPC") 'zeit/org-space)
  (key-seq-define-evil 'normal org-mode-map ";t" 'org-todo)
                                        ; 切换TODO
  (key-seq-define-evil 'normal org-mode-map ";s" 'org-schedule)
                                        ; 设定Schedule
  (key-seq-define-evil 'normal org-mode-map ";z" 'org-deadline)
                                        ; 设定Deadline
  (key-seq-define-evil 'normal org-mode-map "zp" 'org-set-property)
                                        ; 设定Property
  (key-seq-define-evil 'normal org-mode-map ";c" 'org-ctrl-c-ctrl-c)
                                        ; 替换C-c C-c
  (key-seq-define-evil 'normal org-mode-map "zz" 'org-kill-note-or-show-branches)
                                        ; note页取消，相当于替换C-c C-k
  (key-seq-define-evil 'normal org-mode-map "zz"  'org-edit-src-abort)
                                        ; 替换C-c C-k
  (key-seq-define-evil 'normal org-mode-map ";v" 'org-archive-subtree-default)
                                        ; 归档
  (key-seq-define-evil 'normal org-mode-map ";x" 'org-toggle-archive-tag)
                                        ; 添加归档标签
  (key-seq-define-evil '(normal motion) org-mode-map ";j" 'org-metadown)
                                        ; 将项目下移
  (key-seq-define-evil '(normal motion) org-mode-map ";k" 'org-metaup)
                                        ; 将项目上移
  (key-seq-define-evil '(normal motion) org-mode-map ";h" 'org-metaleft)
                                        ; 将项目左移
  (key-seq-define-evil '(normal motion) org-mode-map ";l" 'org-metaright)
                                        ; 将项目右移
  (key-seq-define-evil '(normal motion) org-mode-map "zh" 'org-shiftmetaleft)
                                        ; 将项目左移(同时移动子项)
  (key-seq-define-evil '(normal motion) org-mode-map "zl" 'org-shiftmetaright)
                                        ; 将项目右移(同时移动子项)
  (key-seq-define-evil '(normal motion visual) org-mode-map ";w" 'org-refile)
                                        ; 移动树项目
  (key-seq-define-evil '(normal motion visual) org-mode-map "[i" 'org-insert-link)
                                        ; 插入（更新）链接
  (key-seq-define-evil '(normal motion visual) org-mode-map "zs" 'org-sort)
                                        ; 排序
  (key-seq-define-evil 'normal org-mode-map "z," 'org-insert-structure-template)
                                        ; 插入template
  (key-seq-define-evil 'normal org-mode-map "z;" 'org-zotxt-insert-reference-link)
                                        ; 插入zotero引用
  (key-seq-define-evil 'normal org-mode-map "z'" 'org-zotxt-open-attachment)
                                        ; 打开zotero pdf
  (key-seq-define-evil 'normal org-mode-map "zr" 'zeit/refresh)
  (key-seq-define-evil '(normal motion) org-mode-map ";;" 'zeit/toggle-display)
                                        ; 切换显示
  (key-seq-define-evil 'normal org-mode-map "zc"
                  (lambda () (interactive)
                    (org-babel-execute-src-block 1))) ; force rerun babel src-block
  (key-seq-define-evil '(normal motion visual) org-mode-map ";g" 'zeit/add-statistics-cookies) ; 添加进度条
  )

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
(setq recentf-save-file "~/.emacs.d/forOrgs/.recentf")
(recentf-load-list)
;; 保存最近浏览位置
(require 'saveplace)
(setq save-place-file "~/.emacs.d/forOrgs/.saveplace")
(save-place-mode 1)
;; 自动更新buffer
(global-auto-revert-mode t)
(setq global-auto-revert-non-file-buffers t)
;; 加密
(require 'org-crypt)
(require 'epa-file)
(epa-file-enable)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance
      (quote
       ("crypt")))
(setq org-tags-sort-function 'org-string-collate-lessp)
(setq org-crypt-key nil)
(setq epa-file-cache-passphrase-for-symmetric-encryption t)
;; 移动项目树
(setq org-refile-targets
      '(
        (nil :maxlevel . 4)
        (org-agenda-files :maxlevel . 4)
        )
      )
                                        ; 设置可以移动到其它文件
(setq org-outline-path-complete-in-steps nil)
                                        ; Refile in a single go
(setq org-refile-use-outline-path 'file)
                                        ; 显示完整路径
(require 'org-id) ; 使能ID
(setq org-id-locations-file "~/.emacs.d/forOrgs/.org-id-locations")
(setq org-id-locations-file-relative t)

;; LaTeX图片路径
(setq org-preview-latex-image-directory "_assets/ltximg/")
;; org-fragtog 实时预览LaTeX
(add-hook 'org-mode-hook 'org-fragtog-mode)


;;; ----------------------- 待办设置 ------------------------------

;; 关键字（配置完计得输入`M-x org-mode-restart`）
(setq org-todo-keywords
      '((sequence
         "DOING(i)"
         "TODO°(t)"
         "STUCK(s)"
         "AWAIT(a)"
         "|"
         "DONE√(d@/!)"
         "CANC.(c@/!)"
         "FAIL.(f@/!)"
         )))
(setq org-todo-keyword-faces
      '(
        ("DOING"    .
         (:background "#4c4c4c" :foreground "#d5cb6d" :weight bold))
        ("TODO°"     .
         (:background "#4c4c4c" :foreground "#dc752e" :weight bold))
        ("STUCK"    .
         (:background "#4c4c4c" :foreground "#800000" :weight bold))
        ("AWAIT" .
         (:background "#073642" :foreground "gray" :weight bold))
        ("CANC." .
         (:background "gray" :foreground "black" :weight bold))
        ("FAIL."   .
         (:background "gray" :foreground "#793e12" :weight bold))
        ("DONE√"     .
         (:background "#59aa00" :foreground "#e4e4e4" :weight bold))))
;; 添加创建日期
;; (defun zeit/insert-created-date(&rest ignore)
;;   "Borrowed from https://emacs.stackexchange.com/a/72148/38412"
;;   (org-set-property "CREATED" (format-time-string "%Y-%m-%d %T")))
;; (advice-add 'org-insert-todo-heading :after #'zeit/insert-created-date)

;; 优先级(priority)设置
(setq org-highest-priority ?A) 
(setq org-lowest-priority  ?B)
(setq org-default-priority ?D)
(setq org-priority-faces '((?A . "#f0440a") (?B . "#dcacf2") (?C . "#cef2ac") (?D . "#55d0db")))

;; 自动DONE
(defun org-summary-todo
    (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let
      (org-log-done org-log-states)
                                        ; turn off logging
    (org-todo
     (if
         (= n-not-done 0)
         "DONE√"       ; all done
       (if
           (= n-done 0)
           "TODO°"         ; all not done
         "DOING"                        ; some done
         )))))
;; (add-hook 'org-after-todo-statistics-hook #'org-summary-todo)
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
        "~/.emacs.d/forOrgs/init.org"
        "~/.emacs.d/forOrgs/learn.org"
        "~/.emacs.d/forOrgs/life.org"
        "~/.emacs.d/forOrgs/research.org"
        "~/.emacs.d/forOrgs/thing.org"
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
      )
                                        ; 显示父级项目
(setq org-agenda-custom-commands
      '(("w" "Work"
         (
          (agenda "" ;; (1) (2) (3) (4)
                  ((org-agenda-span 7)
                   (org-agenda-files
                    '("~/.emacs.d/forOrgs/work.org"))
                   ;; (5)
                   (org-agenda-sorting-strategy
                    '(priority-up effort-down)))
                  )
          ;; (5) cont.
          (todo "TODO°|DOING"
                ((org-agenda-files
                  '("~/.emacs.d/forOrgs/work.org")))
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
        ("CANC."
         ("ARCHIVE" . t))
        )
      )
                                        ; 自动将CANCELED项目标记为archive

;; Habit
(require 'org-habit)
(setq org-habit-show-habits-only-for-today nil)
(setq org-habit-show-done-always-green t)
(setq org-habit-graph-column 0)
(setq org-habit-preceding-days 18)
(setq org-habit-following-days 3)
;;; ----------------------- git设置 ------------------------------

;; 自动刷新
(use-package magit
  :defer t
  :after (dash transient with-editor)
  :config
  ;; (require 'magit)
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t)
  (add-hook 'git-commit-setup-hook 'evil-insert-state)
  (put 'narrow-to-region 'disabled nil)
  )
;; (with-eval-after-load 'magit-mode
;;   (add-hook 'after-save-hook 'magit-after-save-refresh-status t))
;; (put 'narrow-to-region 'disabled nil)
;; (add-hook 'git-commit-setup-hook 'evil-insert-state)


;;; ------------------------ Capture -----------------------------
(add-hook 'org-capture-mode-hook 'evil-insert-state)
(setq org-capture-templates
      '(("t" "thing • 尽快做完" entry (file+headline "~/.emacs.d/forOrgs/thing.org" "尽快做完")
         "* TODO° %^{什么事?}
SCHEDULED: %^{时间?: }t
- State \"TODO°\"      from \"\"      %U"
         :immediate-finish t
         :kill-buffer t)
        ("b" "book • ToRead" entry (file "~/.emacs.d/forOrgs/book.org")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:"
         :kill-buffer t)
        ("c" "cheatsheet")
        ("cn" "cheatsheet • Word • 双拼难打的词语" entry (file+olp "~/.emacs.d/forOrgs/cheatsheet.org" "Word(词汇)" "双拼难打的词语")
         "* \"%^{难打的是...}\"
%^{其拼音是...}
"
         :immediate-finish t)
        ("cc" "cheatsheet • Programming Q&A" entry (file+headline "~/.emacs.d/forOrgs/cheatsheet.org" "Programming Q&A(编程问题集)")
        "* %^{问题(Q)} %^g
:PRPOERTIES:
:CAPTURED: %U
:END:
** A: %^{回答(A)}
** R: %^{参考链接(R)}
"
        :immediate-finish t)
        ("cw" "cheatsheet • Word" entry (file+olp "~/.emacs.d/forOrgs/cheatsheet.org" "Word(词汇)")
         "* /%^{English word...}/
%^{中文含义...}
"
         :immediate-finish t)
        ("ce" "cheatsheet • Else" item (file+function "~/.emacs.d/forOrgs/cheatsheet.org" org-goto)
         "%?"
         :unnarrowed t)
        ("d" "diary" plain (file+olp+datetree "~/.emacs.d/forOrgs/diary.org" )
         "%?"
         :unnarrowed t
         :time-prompt t)
        ("i" "wish")
        ("ib" "wish • ToBuy" entry (file+headline "~/.emacs.d/forOrgs/wish.org" "🛒想买")
         "* TODO° %?
- State \"TODO°\"      from \"\"      %U"
         :kill-buffer t)
        ("it" "wish • ToTravel" entry (file+headline "~/.emacs.d/forOrgs/wish.org" "🧳想去")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:"
         :kill-buffer t)
        ("l" "learn")
        ("lc" "learn • Courses" entry (file+headline "~/.emacs.d/forOrgs/learn.org" "📖Courses")
         "* TODO° [%?]
- State \"TODO°\"      from \"\"      %U"
         :unnarrowed t)
        ("w" "work")
        ("wt" "work • Tasks" entry (file+headline "~/.emacs.d/forOrgs/work.org" "Tasks")
         "* TODO° %^{Task name}
SCHEDULED: %^{Schedule at}t
- State \"TODO°\"      from \"\"      %U"
         :immediate-finish t
         :kill-buffer t)
        ("wa" "work • 活动" entry (file+headline "~/.emacs.d/forOrgs/work.org" "活动")
         "* TODO° %?
- State \"TODO°\"      from \"\"      %U"
:kill-buffer t)
        ("wl" "work • Logs" item (file+olp+datetree "~/.emacs.d/forOrgs/worklog.org" )
         "- %?"
         :unnarrowed t
         :time-prompt t)
        ("g" "geek")
        ("gd" "geek • 💡ToDream" entry (file+headline "~/.emacs.d/forOrgs/geek.org" "💡ToDream")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("gr" "geek • 📕ToRead" entry (file+headline "~/.emacs.d/forOrgs/geek.org" "📕ToRead")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("gt" "geek • ️🕸️ToDo" entry (file+headline "~/.emacs.d/forOrgs/geek.org" "🕸️ToDo")
         "* TODO° %?
:PRPOERTIES:
:CAPTURED: %U
:END:
- State \"TODO°\"      from \"\"      %U" :kill-buffer t)
        ("m" "math" entry (file "~/.emacs.d/forOrgs/forNotes/forTech/math/math.org")
         "* 关于 /%?/"
         :unnarrowed t)
        ("h" "hello")
        ("he" "hello • Emacs" plain (file "~/.emacs.d/forOrgs/hello.org")
         "%?"
         :unnarrowed t)
        ("f" "film")
        ("ff" "film • 🎥真人电影" entry (file+headline "~/.emacs.d/forOrgs/film.org" "🎥真人电影")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("fa" "film • 🥸动漫" entry (file+headline "~/.emacs.d/forOrgs/film.org" "🥸动漫")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("fA" "film • 🤠动画电影" entry (file+headline "~/.emacs.d/forOrgs/film.org" "🤠动画电影")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("fs" "film • 📺电视剧" entry (file+headline "~/.emacs.d/forOrgs/film.org" "📺电视剧")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("fj" "film • 📹纪录片" entry (file+headline "~/.emacs.d/forOrgs/film.org" "📹纪录片")
         "* %?
:PRPOERTIES:
:CAPTURED: %U
:END:" :kill-buffer t)
        ("n" "notes")
        ("nf" "forNotes • float.org" plain
         (file+function
          "~/.emacs.d/forOrgs/forNotes/forTech/float/float.org"
          (lambda ()
            (org-babel-goto-named-src-block "special-float")
            (org-babel-goto-src-block-head)
            ;; (org-fold--hide-wrapper-toggle (org-element-at-point) 'block t nil)
            (forward-line -2)
            (delete-line)
            )
          )
        "#+header: :var fp_hex=\"%?\""
        :unnarrowed t)
        ))

;;; -------------------- Atomic Chrome --------------------------
;; (require 'atomic-chrome)
;; (atomic-chrome-start-server)
(use-package atomic-chrome
  :config
  (atomic-chrome-start-server)
  )


;;; -------------------- Auto Insert ----------------------------
(auto-insert-mode t)
(define-skeleton ske-img
  "Quick insert inline image."
  nil
  "#+attr_html: :width " (skeleton-read "Width (default 80)? ") | "80" "%" \n
  "[["(org-link-complete-file)"]]" \n
  (org-redisplay-inline-images))

(define-skeleton ske-article
  "Quick insert an article's preamble."
  nil
  "# -*- eval: (add-hook 'after-save-hook 'org-html-export-to-html nil 'make-it-local); org-confirm-babel-evaluate: nil; eval: (org-sbe \"startup-block\"); -*-" \n
  "#+TITLE: " (skeleton-read "Name this article: ") \n
  "#+AUTHOR: " (skeleton-read "Who are you? : ") \n
  "#+DATE: " (format-time-string "<%Y-%02m-%02d %3a %02H:%02M:%02S>") \n
  "#+STARTUP: latexpreview show2level" \n
  "#+PROPERTY: HEADER-ARGS+ :eval no-export" \n
  "#+PROPERTY: HEADER-ARGS+ :cache yes" \n
  "#+OPTIONS: ^:{}" \n
  "Updated Time-stamp: <>" \n
  "* _Startup Block_                                                    :noexport:" \n
  "#+name: startup-block" \n
  "#+begin_src elisp" \n
  "#+end_src" \n
  - \n
)
(define-auto-insert '(org-mode . "Write Article in Org-mode") 'ske-article)

;;; ------------------- Functions ------------------------------
(defun zeit/kill-dired-buffers (&optional no-ask)
  "Kill all dired buffers. Borrowed from files.el."
  (interactive)
  (dolist (buffer (buffer-list))
    (let ((name (buffer-name buffer)))
      (when (with-current-buffer buffer
              (derived-mode-p 'dired-mode))
        (funcall (if no-ask 'kill-buffer 'kill-buffer-ask) buffer)))))

(defun zeit/refresh ()
  "Refresh the percentage of checkbox/TODOs & redisplay inline images & align tags."
  (interactive)
  (org-update-statistics-cookies "ALL")
  (org-redisplay-inline-images)
  (fset 'zeit-align-tags
        (kbd "C-u C-c C-q"))
  (execute-kbd-macro 'zeit-align-tags)
  (org-table-map-tables (lambda () (org-table-align) (org-table-shrink)))
  (message "Refresh done!")
  )

(defun zeit/toggle-display (type)
  "Toggle link/inline-image/force-cycle, etc's display."
  (interactive "cToggle type: l(a)tex/(l)ink/(i)mage/arch(v)ied")
  (cond ((char-equal type ?a) (org-latex-preview))
        ((char-equal type ?l) (org-toggle-link-display))
        ((char-equal type ?i) (org-toggle-inline-images))
        ((char-equal type ?v) (org-cycle-force-archived))
        ((char-equal type ?x) (org-cycle-force-archived)))
  )

(defun zeit/enlarge-or-shiftmetaleft ()
  "Enlarge windows or do org-shiftmetaleft in table."
  (interactive)
  (if (not (org-at-table-p))
      (enlarge-window 1)
    (org-shiftmetaleft)))

(defun zeit/shrink-or-shiftmetaright ()
  "Shrink windows or do org-shiftmetaright in table."
  (interactive)
  (if (not (org-at-table-p))
      (shrink-window 1)
    (org-shiftmetaright)))

(defun zeit/enlarge-or-shiftmetaup ()
  "Enlarge windows horizontally or do org-shiftmetaup in table."
  (interactive)
  (if (not (org-at-table-p))
      (enlarge-window-horizontally 1)
    (org-shiftmetaup)))

(defun zeit/shrink-or-shiftmetadown ()
  "Shrink windows horizontally or do org-shiftmetadown in table."
  (interactive)
  (if (not (org-at-table-p))
      (shrink-window-horizontally 1)
    (org-shiftmetadown)))

(defun zeit/dir-to-nested-list (dir exclude-strings n-level n-depth)
  "Traverse a given directory, store the info about files
under the directory in the form of list.
Arguments:
  dir:                  the starting directory
  exclude-string:       to ignored files' patterns
  n-level:              current level of recursion
  n-depth:              max depth of recursion
"
  (let* ((ret nil)
         (dir (directory-file-name dir))
         (exclude-regexp exclude-strings))
    (catch 'dir2list
      (when (> n-level n-depth) (throw 'dir2list ret))
      (dolist (file (directory-files dir t directory-files-no-dot-files-regexp t))
        (unless (string-match exclude-regexp file)
          (if (file-directory-p file)
              ;; Recursive entry.
              (setq file (cons file (zeit/dir-to-nested-list file exclude-strings (1+ n-level) n-depth))))
          (push file ret))))
    ret))

(defun zeit/nested-list-to-org (n-start nested-list)
  "Given nested list like `(a.org (folder b.org c.org)),
return the headline as org headlines.
Arguments:
  n-start:              the starting level
  nested-list:          the list containg the files
"
  (let* ((ret "")
         (fmt "%s [[%s][%s]]\n"))
    (dolist (item nested-list)
      (if (nlistp item)
          (setq ret (concat ret (format fmt (make-string n-start ?*) item (file-name-nondirectory item))))
        (setq ret (concat
                   ret
                   (format fmt (make-string n-start ?*) (car item) (file-name-nondirectory (car item)))
                   (zeit/nested-list-to-org (1+ n-start) (cdr item))
                   ))))
    ret))

(defun zeit/dir-to-org (dir exclude-strings n-start n-depth)
  (interactive)
  (let ((nlist (zeit/dir-to-nested-list dir exclude-strings 1 n-depth)))
    (zeit/nested-list-to-org n-start nlist)))

(defun zeit/dir-as-org-in-subtree (subtree-tag dir exclude-strings n-depth)
  "Borrowed from: https://emacs.stackexchange.com/a/41566/38412
Arguments:
  subtree-name:         the inserted subtree's name
  dir:                  the directory to insert
  exclude-strings:      excluding something
  n-depth:              max depth
"
  (org-map-entries
   (lambda ()
     (let ((name (nth 4 (org-heading-components)))
           (tags (nth 5 (org-heading-components)))
           (n-level (nth 0 (org-heading-components))))
       (if (string= tags subtree-tag)
           (save-restriction
             (org-mark-subtree)
             (forward-line)
             (delete-region (region-beginning) (region-end))
             (insert (zeit/dir-to-org dir exclude-strings (1+ n-level) n-depth))
             )))))
  (message "%s updated!" subtree-tag)
  )

(defun zeit/sort-tasks (_task-regex &optional maxlevel)
  "Given headline string, sorts it in a>o>p order."
  (interactive "sHeadline to sort (e.g. all):")
  (let* ((_task-regex (if (string= _task-regex "") "all" _task-regex))
         (regex (if (string= _task-regex "all") ".*" _task-regex))
         (n-max (or maxlevel 1)))
    (org-map-entries
     ; ------------------------------------------------- FUNC
     (lambda ()
       (let ((name (org-entry-get nil "ITEM")))
         (save-restriction
           ;; (message "---> Headline: %s" name)
           (if (string-match regex name)
               (progn
                 (message "===> Sorting %s ... ↧" name)
                 (org-sort-entries nil ?a)
                 (org-sort-entries nil ?o)
                 (org-sort-entries nil ?p)
                 (message "===> Sorted %s      ↥" name)
                 )
             )
           )
         )
       )
     ; ------------------------------------------------- MATHC
     (format "LEVEL=%s-noexport" n-max)
     'file 'archive 'comment
     )
    (outline-show-only-headings)
    (save-buffer)
    (message "Tasks (%s) sorted!" _task-regex)
    ))

(defun zeit/exe-named-babel (_babel-name)
  "Given babel name, execute it."
  (interactive "sBabel name:")
  (save-excursion
    (org-babel-goto-named-result _babel-name)
    (org-narrow-to-subtree)
    (org-babel-execute-subtree 1)
    (widen))
  (message "Babel <%s> executed!" _babel-name))

(defun zeit/add-statistics-cookies (_type)
  "Given a statistics cookies type ('%%' or '\/'),
append the cookies to the end of current headline."
  (interactive "cType(input '%%' or '\/'):")
  (message "%s" (org-get-heading t))
  (let ((orig-headline (org-get-heading t t t)) ; NO-TAGS, NO-TODO, NO-PRIORITY enabled
        (stat-type (char-to-string _type))
        ) 
    (org-edit-headline
     (format "%s [%s]" orig-headline stat-type))
    )
  )

(defun zeit/get-file-contents-between-lines (file n-line-beg n-line-end)
  "Given a FILE name, return the text between the line N-LINE-BEG and the N-LINE-END."
  (interactive "fFile: \nnBegin line: \nnEnd line: ")
  (let ((_ret nil))
    (with-temp-buffer
      (insert-file-contents file)
      (setq _ret
            (buffer-substring
             (line-beginning-position n-line-beg)
             (line-end-position n-line-end))))
    (format "%s" _ret))
  )

(defun zeit/line-extractor (buffer regex &optional whole-line)
  "Borrowed from https://www.reddit.com/r/emacs/comments/jka4nm/comment/gahvvq2/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button."
  (interactive "Bbuffer: \nMregex: ")
  (let* (
         ;; Split lines.
         (lines
          (with-current-buffer buffer
            (string-lines (buffer-substring-no-properties
                           (point-min)
                           (point-max)
                           )
                          t)))
         ;; Filter lines.
         (lines-that-match (seq-filter
                            (lambda (line) (string-match-p regex line))
                            lines))
         (rejoined-lines)
         (_filter-line)
         )
    ;; Join lines.
    (if (not whole-line)
        (setq rejoined-lines
              (mapconcat
               (lambda (line)
                 (save-match-data
                   (string-match regex line)
                   (setq _filter-line (match-string 1 line))
                   _filter-line
                   ))
               lines-that-match
               "\n"))
      (setq rejoined-lines (string-join lines-that-match "\n")))

    (current-buffer)
    (format "%s" rejoined-lines)
    ))

(defun zeit/org-ctrl-c-y ()
  "Map C-c y in different occasions."
  (interactive)
  (when (org-at-table-p)
    (call-interactively 'org-table-copy-region)
    )
  )

(defun zeit/org-ctrl-c-p ()
  "Map C-c p in different occasions."
  (interactive)
  (cond (;; Table
         (org-at-table-p)
         (call-interactively 'org-table-paste-rectangle))
        (;; Normal/Insert/Visual
         t
         (call-interactively 'zeit/org-paste-image-from-clipboard))
        ))

(defun zeit/org-ctrl-c-space ()
  "Map C-c SPC in different occasions."
  (interactive)
  (when (org-at-table-p)
    (call-interactively 'org-table-blank-field)
    )
  )

(defun zeit/org-space ()
  "Map SPC in different occasions."
  (interactive)
  (when (org-at-table-p)
    (call-interactively 'org-table-blank-field)
    )
  )

(defun zeit/org-paste-image-from-clipboard ()
  "Take a screenshot into a time stamped unique-named file in the
    same directory as the org-buffer and insert a link to this file."
  (interactive)
  (let* ((the-dir (file-name-directory (buffer-file-name)))
         (attachments-dir (file-name-concat the-dir "_assets/"))
         (jpg-file-name (format-time-string "%Y%m%d_%H%M%S.jpg"))
         (jpg-path (file-name-concat attachments-dir jpg-file-name))
         (jpg-relative-path (file-relative-name jpg-path the-dir)))
    (if (not (file-directory-p attachments-dir)) (make-directory attachments-dir nil))
    (shell-command (concat "powershell -command \"Add-Type -AssemblyName System.Windows.Forms;if ($([System.Windows.Forms.Clipboard]::ContainsImage())) {$image = [System.Windows.Forms.Clipboard]::GetImage();[System.Drawing.Bitmap]$image.Save('" jpg-path "',[System.Drawing.Imaging.ImageFormat]::Jpeg); Write-Output 'clipboard content saved as file'} else {Write-Output 'clipboard does not contain image data'}\""))
    (insert
     (format
      "#+caption: %s\n#+attr_html: :width 80%%\n[[file:%s]]"
      jpg-file-name
      jpg-relative-path))
    (org-redisplay-inline-images)
    ))

;; ----------------------- AsciiDoc Export Backend --------------------
;; (add-to-list 'load-path "~/.emacs.d/myscripts-dev/ox-asciidoc/")
;; (require 'ox-asciidoc)
(use-package ox-asciidoc
  ;; :defer t
  :load-path "~/.emacs.d/myscripts-dev/ox-asciidoc/")

;; --------------------------- Powershell Babel -----------------------
;; (add-to-list 'load-path "~/.emacs.d/myscripts-dev/ob-powershell/")
;; (require 'ob-powershell)
(use-package ob-powershell
  ;; :defer t
  :load-path "~/.emacs.d/myscripts-dev/ob-powershell/")

;;; -------------------- Self-defined Org-babel --------------------------
;; (add-to-list 'load-path "~/.emacs.d/myscripts-dev/ob-remotessh/")
;; (require 'ob-remotessh)
(use-package ob-remotessh
  ;; :defer t
  :load-path "~/.emacs.d/myscripts-dev/ob-remotessh/")

;;; ---------------- Org Export Backend for Confluence ------------------
;; (add-to-list 'load-path "~/.emacs.d/myscripts-dev/ox-conf/")
;; (require 'ox-conf)
(use-package ox-conf
  ;; :defer 3
  :load-path "~/.emacs.d/myscripts-dev/ox-conf/")

;; ------------------------------ Jira --------------------------------
;; (add-to-list 'load-path "~/.emacs.d/myscripts-dev/org-jira/")
;; (require 'org-jira)
(use-package org-jira
  ;; :defer 3
  :load-path "~/.emacs.d/myscripts-dev/org-jira/"
  :config
  (setq org-jira-working-dir "~/.emacs.d/forOrgs/.org-jira")
  (setq jiralib-url "https://jira.hygon.cn")
  (setq org-jira-use-status-as-todo nil)
  (setq org-jira-jira-status-to-org-keyword-alist
        '(("To Do" . "TODO°")
          ("开放" . "TODO°")
          ("In Progress" . "DOING")
          ("处理中" . "DOING")
          ("In Review" . "DOING")
          ("审核中" . "DOING")
          ("Cancelled" . "CANC.")
          ("已取消" . "CANC.")
          ("Resolved" . "DONE√")
          ("已解决" . "DONE√")
          ("Closed" . "DONE√")
          ("关闭" . "DONE√")
          ("Done" . "DONE√")
          ("完成" . "DONE√"))
        )
  (setq request-log-level 'debug)
  )

;; ------------------------ Nginx Configuration -----------------------
;; (require 'nginx-mode)
(use-package nginx-mode
  :defer t)

;; ------------------------------ AutoHotKey --------------------------
;; (require 'ahk-mode)
;; (setq ahk-indentation 4)
(use-package ahk-mode
  :defer t
  :config
  (setq ahk-indentation 4)
  )

;; --------------------------------------------------------------------
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (shell . t)
   (powershell . t)
   (C . t)
   (emacs-lisp . t)
   (latex . t)
   (dot . t)))

;; -------------------------------- Email ------------------------------
(setq message-send-mail-function 'smtpmail-send-it)
(setq user-mail-address "zei.t@qq.com")
(setq user-full-name "zeit")
(setq smtpmail-smtp-user "zei.t@qq.com"
      smtpmail-smtp-server "smtp.qq.com"
      smtpmail-smtp-service 465
      smtpmail-stream-type 'ssl)

