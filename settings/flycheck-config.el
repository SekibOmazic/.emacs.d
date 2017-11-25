;; flycheck
(use-package flycheck
  :ensure t
  ;;:init
  ;;(global-flycheck-mode t))
  :config (setq flycheck-command-wrapper-function
		(lambda (command) command)
		flycheck-executable-find
		(lambda (command) command))
;;  (global-flycheck-mode))
)

(provide 'flycheck-config)
