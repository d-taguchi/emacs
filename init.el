;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
(require 'cl)


;; ------------------------------------------------------------------------
;; @ load

(setq load-path (append '("~/.emacs.d/packages") load-path))


;; ------------------------------------------------------------------------
;; @ auto-install

(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/packages/")
(add-to-list 'load-path auto-install-directory)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)


;; ------------------------------------------------------------------------
;; @ init-loader

(setq load-path (
    append (
        list (
            expand-file-name "~/.emacs.d/packages/"
        )
    ) load-path
))
(require 'init-loader)
(init-loader-load "~/.emacs.d/config")


;; ------------------------------------------------------------------------
;; @ theme

(load-theme 'monokai t)
(enable-theme 'monokai)


;; ------------------------------------------------------------------------
;; @ lang
;; 環境を日本語、UTF-8

(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)


;; ------------------------------------------------------------------------
;; @ key bind

;; 基本
(define-key global-map (kbd "M-?") 'help-for-help)     ; ヘルプ
(define-key global-map (kbd "C-z") 'undo)              ; undo
(define-key global-map (kbd "C-c i") 'indent-region)   ; インデント
(define-key global-map (kbd "C-c C-i") 'hippie-expand) ; 補完
(define-key global-map (kbd "C-c ;") 'comment-dwim)    ; コメントアウト
(define-key global-map (kbd "M-C-g") 'grep)            ; grep
(define-key global-map (kbd "M-g") 'goto-line)         ; 指定行へ移動

;; C-hでバックスペース
(keyboard-translate ?\C-h ?\C-?)

;; C-kで行全体を削除する
(setq kill-whole-line t)

;; 垂直揃え
(define-key global-map (kbd "M-:") 'align-regexp)


;; ------------------------------------------------------------------------
;; @ general

;; スクロールは１行ごとに
(setq scroll-conservatively 1)

;; メニューバー非表示
(menu-bar-mode -1)

;; カーソルの点滅を止める
(blink-cursor-mode 0)

;; 対応する括弧を光らせる
(show-paren-mode 1)

;; ウィンドウ内に収まらないときだけ括弧内も光らせる
(setq show-paren-style 'mixed)

;; タイトルバーにファイルのフルパス表示
(setq frame-title-format (format "%%f - Emacs@%s" (system-name)))

;; 行番号表示
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%4d ")

;; 現在行をハイライト
(global-hl-line-mode t)

(custom-set-faces
'(hl-line ((t (:background "color-236"))))
)

;; 行間
(setq-default line-spacing 0)

;; タブをスペースで扱う
(setq-default indent-tabs-mode nil)

;; タブ幅
(setq default-tab-width 4)

;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;; ミニバッファの履歴を保存する
(savehist-mode 1)

;; ミニバッファの履歴の保存数を増やす
(setq history-length 3000)

;; バックアップを残さない
(setq make-backup-files nil)

;; 終了時にオートセーブファイルを削除
(setq delete-auto-save-files t)

;; 保存前に自動でクリーンアップ
(setq whitespace-action '(auto-cleanup))

;; 最終行に必ず一行挿入
(setq require-final-newline t)

;; バッファの最後でnewlineで新規行を追加するのを禁止
(setq next-line-add-newlines nil)

;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

