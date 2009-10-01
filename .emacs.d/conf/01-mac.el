;; -*- mode: emacs-lisp; coding: utf-8; indent-tabs-mode:nil -*-

;; フォント設定
(setq font-alias "-*-*-medium-r-normal--10-*-*-*-*-*-fontset-hiramaru")
(setq fixed-width-use-QuickDraw-for-ascii t)
(setq mac-allow-anti-aliasing t)
(setq mac-allow-anti-aliasing t)
(set-default-font font-alias)
(add-to-list 'default-frame-alist `(font . ,font-alias))
(when (= emacs-major-version 23)
  (set-fontset-font
   (frame-parameter nil 'font)
   'japanese-jisx0208
   '("Hiragino Maru Gothic Pro" . "iso10646-1"))
  (setq face-font-rescale-alist
    '(("^-apple-M+_1mn.*" . 1.2)
      (".*osaka-bold.*" . 1.2)
      (".*osaka-medium.*" . 1.2)
      (".*courier-bold-.*-mac-roman" . 1.0)
      (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
      (".*monaco-bold-.*-mac-roman" . 0.9)
      ("-cdac$" . 1.3))))

;; Mac用設定
;; http://www.pqrs.org/~tekezo/macosx/doc/unix/
;(setq mac-command-key-is-meta t)
;(setq mac-command-modifier-meta t)
;(setq mac-option-modifier 'meta)
;(setq grep-find-use-xargs 'bsd)
(setq browse-url-generic-program "open")

;; 半透明化パッチ適用
;; http://homepage.mac.com/matsuan_tamachan/emacs/TransparencyPatch.html
(setq default-frame-alist
      (append (list
               '(alpha  . (96 96))
               '(height . 62)
               ) default-frame-alist))
;(setq initial-frame-alist '((width . 177) (height . 47) (top . 0) (left . 0)))
(setq initial-frame-alist default-frame-alist)

;; Ctrl/Cmd/Optionがシステムに渡されるのを防ぐ
(setq mac-pass-control-to-system nil)
;(setq mac-pass-command-to-system nil)
;(setq mac-pass-option-to-system nil)

