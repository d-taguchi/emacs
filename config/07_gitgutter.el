(require 'git-gutter)
;;(global-git-gutter-mode t)

(setq git-gutter:separator-sign "|")
(set-face-foreground 'git-gutter:separator "yellow")

(add-hook 'cperl-mode-hook 'git-gutter-mode)
(add-hook 'js2-mode-hook   'git-gutter-mode)
(add-hook 'php-mode-hook   'git-gutter-mode)
(add-hook 'ruby-mode-hook  'git-gutter-mode)
