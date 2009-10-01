;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode:nil -*-

;; Key bindings
(progn
  (global-set-key "\M-?" 'help-for-help)
  (global-set-key "\C-h" 'backward-delete-char)
  (global-set-key [delete] 'delete-char)
  (global-set-key "\C-m" 'newline-and-indent)
  (setq indent-line-fuction 'indent-relative-maybe)
  )

(setq-default indent-tabs-mode nil)

(setq kill-whole-line t)

(show-paren-mode t)

(column-number-mode t) 

(line-number-mode t)

(setq transient-mark-mode t)

(set-language-environment 'Japanese)

;;;
