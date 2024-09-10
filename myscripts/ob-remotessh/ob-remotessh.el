;;; ob-remotessh.el --- Execute commands in remote machine via ssh, all inside babel.  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  

;; Author:  zeit
;; Keywords: processes, terminals
;; Version: 1.0.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;; Run commands in HOST with RS babel.
;;
;; Borrowed some codes from the followings:
;;   - https://git.sr.ht/~bzg/worg/tree/master/item/org-contrib/babel/ob-template.el
;;   - https://github.com/rkiggen/ob-powershell
;;

;; Attention:
;;   - To suppress banner message, touch a ~/.hushlogin file (in your home directory).
;;   - DO NOT RUN DANGER COMMANDS!!! (E.g. rm -rf *)
;;

;; Usage:
;; #+begin_src rs :host <your_machine> :path ~ :var today="Hello, human, today is `date '+%Y-%m-%d'`."
;;   echo $today
;; #+end_src
;;
;; #+RESULTS:
;; : Hello, human, today is 2024-09-10.
;;

;; Changelog:
;;   2024.09.10: Created this file.
;;

;; 
(require 'ob)

;;; Code:
(add-to-list 'org-src-lang-modes '("rs" . sh))

(defun org-babel-expand-body:rs (body params)
  "Expand BODY according to PARAMS, return the expanded body."
  (let ((vars (org-babel--get-vars params)))
    (if (null vars) body
      (format "%s;%s"
              (mapconcat
               (lambda (pair)
                 (format "%s=%S" (car pair) (cdr pair)))
               vars ";")
              body)))
  )

(defun org-babel-execute:rs (body params)
  "Execute bash commands on remote host inside babel."
  (let* ((tmp-file (org-babel-temp-file "remotessh-" ".sh"))
         (host (cdr (assq :host params)))
         (path (cdr (assq :path params)))
         (cmd-remote "")
         (cmd-local "")
         )
    (if path
        (setq body (format "cd %s && %s" path body)))
    (with-temp-file tmp-file
      (setq cmd-remote (org-babel-expand-body:rs body params))
      (insert cmd-remote)
      )
    (setq cmd-local
          (format "ssh -T %s < %s" host (org-babel-process-file-name tmp-file)))
    (message "[remotessh]===>tmp-file:   %s" tmp-file)
    (message "[remotessh]===>cmd-remote: %s" cmd-remote)
    (message "[remotessh]===>cmd-local:  %s" cmd-local)
    (org-babel-eval cmd-local ""))
  )

(provide 'ob-remotessh)
;;; ob-remotessh.el ends here
