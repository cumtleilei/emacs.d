;;; package --- summary
;;; Commentary:
;;; code:

;; Use paradox to manage package by default
(require-package 'paradox)
(paradox-enable)

;;; ignore the visiual bell
(setq ring-bell-function 'ignore)

;;----------------------------------------------------------------------------
;; Rebind the help function to helpful
;;----------------------------------------------------------------------------
(require-package 'helpful)
(global-set-key (kbd "C-h h") #'helpful-at-point)
(global-set-key (kbd "C-h f") #'helpful-callable)
(global-set-key (kbd "C-h F") #'helpful-function)
(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)
(global-set-key (kbd "C-h c") #'helpful-command)
(setq counsel-describe-function-function #'helpful-callable)
(setq counsel-describe-variable-function #'helpful-variable)

;; set font
(set-default-font "Courier-24")

;; use ls-lisp to avoid the "ls does not support --dired" issue
(setq ls-lisp-use-insert-directory-program nil)
(require 'ls-lisp)

;; zap to char
(require-package 'zzz-to-char)
(global-set-key (kbd "M-z") #'zzz-to-char)

;; dumb jump
(when (maybe-require-package 'dumb-jump)
  (setq dumb-jump-selector 'ivy)
  (setq dumb-jump-force-searcher 'ag)
  (setq dumb-jump-prefer-searcher 'ag)
  (setq dumb-jump-aggressive nil)
  (add-hook 'prog-mode-hook 'dumb-jump-mode))
(after-load 'dumb-jump
  (global-set-key (kbd "C-M-g") 'dumb-jump-go)
  (global-set-key (kbd "C-M-b") 'dumb-jump-back)
  (global-set-key (kbd "C-M-q") 'dumb-jump-quick-look))

;; find file in project at point
(when (maybe-require-package 'find-file-in-project)
  (global-set-key (kbd "C-c C-f") 'find-file-in-project-at-point))

(provide 'init-local)

;;; init-local.el ends here
