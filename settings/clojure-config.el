(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))

(unless (package-installed-p 'cider)
  (package-install 'cider))

(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)

;; git
;;(use-package magit
;;  :ensure t
;;  :bind (("C-x g" . magit-status)))

;;(use-package git-timemachine
;;  :ensure t
;;  :bind (("s-g" . git-timemachine)))


;; paredit
(use-package paredit
  :ensure t
  :config
  (add-hook 'emacs-lisp-mode-hook #'paredit-mode)
  ;; enable in the *scratch* buffer
  (add-hook 'lisp-interaction-mode-hook #'paredit-mode)
  (add-hook 'ielm-mode-hook #'paredit-mode)
  (add-hook 'lisp-mode-hook #'paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'paredit-mode))

;; rainbow delimiter
(use-package rainbow-delimiters
  :ensure t)

;; clojure mode
(use-package clojure-mode
  :ensure t
  :config
  (add-hook 'clojure-mode-hook #'paredit-mode)
  (add-hook 'clojure-mode-hook #'subword-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

;; (use-package clojure-mode
;;   :ensure t
;;   :mode (("\\.clj\\'" . clojure-mode)
;;          ("\\.edn\\'" . clojure-mode))
;;   :init
;;   (add-hook 'clojure-mode-hook #'paredit-mode)
;;   (add-hook 'clojure-mode-hook #'subword-mode)
;;   (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

;; cider
(use-package cider
  :ensure t
  :config
  (setq nrepl-log-messages t)
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'paredit-mode)
  (add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode))

(provide 'clojure-config)
