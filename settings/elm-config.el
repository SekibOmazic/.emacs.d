;; elm
(use-package elm-mode
  :ensure t
  :after company
  :defer f
  :config
  (setq elm-format-on-save t)
  (add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
  (add-to-list 'company-backends 'company-elm))


;; flycheck
(use-package flycheck-elm
  :ensure t
  :after flycheck
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

(provide 'elm-config)
