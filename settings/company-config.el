;; company
(use-package company
  :diminish company-mode
;;  :bind (("C-;" . company-complete))
  :config
  (add-hook 'after-init-hook 'global-company-mode))


(provide 'company-config)
