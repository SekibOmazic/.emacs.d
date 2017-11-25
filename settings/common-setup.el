;; User info
(setq user-full-name "Sekib Omazic"
      user-mail-address "sekib.omazic@gmail.com")


;; No splash screen
(setq inhibit-startup-message t)


;; Disable UI Elements
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))


;; highlight cursor line
(global-hl-line-mode 1)
(global-linum-mode t)


;; window size
(when window-system (set-frame-size (selected-frame) 170 44))


;; Always display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)


;; just y or n for questions
(defalias 'yes-or-no-p 'y-or-n-p)


;; highlight coherent parens
(show-paren-mode 1)


;; do not emphasize the text between parens
(defvar show-paren-style 'parenthesis)


;; open shell in the same frame
(push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)

;; make ibuffer default
(defalias 'list-buffers 'ibuffer-other-window)


(provide 'common-setup)
