;; ------------------------------------------------------------------------
;; @ php mode

(require 'php-mode)

;; PEAR規約のインデント設定
(setq php-mode-force-pear t)

;; *.php php-modeを自動起動
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
