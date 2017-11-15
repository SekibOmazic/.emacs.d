;; Make Emacs use the $PATH set up by the user's shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)

(provide 'shell-config)
