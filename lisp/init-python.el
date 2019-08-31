;;; init-python.el --- Python editing -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
;;; to use elpy config properly, pip install autopep8 jedi flake8 black virtualenv in your console


(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)

;; use flycheck instead of the default flymake for syntax checking
(when (maybe-require-package 'elpy)
  (after-load 'python
    (setq elpy-rpc-backend "jedi")
    (elpy-enable)
    (when (load "flycheck" t t)
      (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
      (add-hook 'elpy-mode-hook 'flycheck-mode))))

(when (maybe-require-package 'py-autopep8)
  (after-load 'python
    (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)))


(provide 'init-python)
;;; init-python.el ends here
