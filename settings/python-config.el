(use-package py-autopep8
  :ensure t
  :config
  (setq py-autopep8-options '("--ignore=E501,W293,W391,W690"))
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))


(use-package elpy
  :ensure t
  :config
  (progn
    (when (require 'flycheck nil t)
      (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
      (add-hook 'elpy-mode-hook 'flycheck-mode))

    (define-key global-map (kbd "RET") 'newline-and-indent)

    (elpy-enable)

    (setq python-shell-interpreter "jupyter"
	  python-shell-interpreter-args "console --simple-prompt")
    
;;    (elpy-use-ipython)

    ;; jedi is great
    ;;(setq elpy-rpc-backend "jedi")))
    ))

(provide 'python-config)
