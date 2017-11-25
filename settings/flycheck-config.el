;; flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
  :config
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
)

(provide 'flycheck-config)
