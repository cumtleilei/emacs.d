;;; package --- summary
;;; Commentary:
;;; code:

;; Use paradox by default
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

;;----------------------------------------------------------------------------
;; Turn off autosave mode and backup mode
;;----------------------------------------------------------------------------
(setq auto-save-default nil)
(setq make-backup-files nil)

;; use ls-lisp to avoid the "ls does not support --dired" issue
(setq ls-lisp-use-insert-directory-program nil)
(require 'ls-lisp)

(provide 'init-local)

;;; init-local.el ends here
