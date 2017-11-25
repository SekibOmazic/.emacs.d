(use-package py-autopep8
  :ensure t
  :config
  (setq py-autopep8-options '("--ignore=E501,W293,W391,W690"))
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))


(use-package elpy
  :ensure t
;  :defer 2
  :config
  (progn
    (when (require 'flycheck nil t)
      (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
      (add-hook 'elpy-mode-hook 'flycheck-mode))

    ;; enable autopep8 formatting on save
    ;; ignoring:
    ;; - E501 - Try to make lines fit within --max-line-length characters.
    ;; - W293 - Remove trailing whitespace on blank line.
    ;; - W391 - Remove trailing blank lines.
    ;; - W690 - Fix various deprecated code (via lib2to3).
;    (require 'py-autopep8)
;    (setq py-autopep8-options '("--ignore=E501,W293,W391,W690"))
;    (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

    (define-key global-map (kbd "RET") 'newline-and-indent)

    (elpy-enable)
    (elpy-use-ipython)

    ;; jedi is great
    ;;(setq elpy-rpc-backend "jedi")))
    ))


					;
;Set up elpy for Python in Emacs
;(use-package elpy
;  :ensure t
;  :config
;  (elpy-enable)
;  ;; Enable elpy in a Python mode
;  (add-hook 'python-mode-hook 'elpy-mode)
;  (setq elpy-rpc-backend "jedi")
;  ;; Open the Python shell in a buffer after sending code to it
;  (add-hook 'inferior-python-mode-hook 'python-shell-switch-to-shell)
;  ;; Use IPython as the default shell, with a workaround to accommodate IPython 5
;  ;; https://emacs.stackexchange.com/questions/24453/weird-shell-output-when-using-ipython-5  (setq python-shell-interpreter "ipython")
;  (setq python-shell-interpreter-args "--simple-prompt -i")
;  ;; Enable pyvenv, which manages Python virtual environments
;  (pyvenv-mode 1)
;  ;; Tell Python debugger (pdb) to use the current virtual environment
;  ;; https://emacs.stackexchange.com/questions/17808/enable-python-pdb-on-emacs-with-virtualenv
;  (setq gud-pdb-command-name "python -m pdb "))

(provide 'python-config)
