 ;; Emacs setup file

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (leuven)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; 이맥스 내장 한글입력기 사용하기
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)
(global-set-key (kbd "<S-kana>") 'toogle-input-method)
(set-fontset-font "fontset-default" 'hangul '("D2coding"))
;; 줄 번호 출력
(global-linum-mode 1)
;; Add plugin path
;; (add-to-list 'load-path "D:/emacs-24.5/plugin")
;; Deft load
(add-to-list 'load-path "~/.emacs.d/deft")
(require 'deft)
(setq deft-extension "org")
(setq deft-text-mode 'org-mode)
(setq deft-default-extension "org")
(setq deft-directory "~/Dropbox/Deft")
(setq deft-use-filename-as-title t)
;; 시작화면 없앰
(setq inhibit-startup-screen t)
;;폰트 설정
(set-face-font 'default "D2Coding")
;; Dark room
;; (require 'darkroom)
;; Fountain-mode
;; (require 'fountain-mode)
;; Markdown-Mode
;; (autoload 'markdown-mode "markdown-mode"
;;   "Major mode for editing Markdown files" t)
;; (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
;; Org-mode				
(setq org-log-done 'time)
(setq org-log-done 'note)
;; Word-wrap
(global-visual-line-mode t)
;; Info-Directory
;; (setq info-directory-list '"~/문서/emacs_info")
;; Source file path
(setq source-directory "/usr/src/emacs24-24.4+1/")
;; C indent style
(setq c-defualt-style "linux"
      c-basic-offset 8)
;; Package archives setup
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			("marmalade" . "https://marmalade-repo.org/packages/")
			("melpa" . "https://melpa.org/packages/")))
			
