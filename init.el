;; define settings directory. here we put all config files
(defvar settings-dir
      (expand-file-name "settings" user-emacs-directory))


;; load paths
(add-to-list 'load-path settings-dir)

;; Setups
(require 'common-setup)
(require 'package-setup)


;; Configs
(require 'which-key-config)
(require 'ace-window-config)
(require 'exec-path-config)
(require 'company-config)
(require 'flycheck-config)
(require 'theme-config)
(require 'elm-config)
(require 'reasonml-config)
(require 'python-config)

;; Modes installed via opam
(require 'opam-user-setup)    ;; tuareg and merlin 
;;(require 'ocamlformat-config)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ace-window flycheck-elm elm-mode atom-one-dark-theme flycheck company exec-path-from-shell use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
