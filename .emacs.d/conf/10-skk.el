(require 'skk-autoloads nil t)
(setq default-input-method "japanese-skk")
;(require 'skk-autoloads)
;(require 'skk-setup)

;; 変換開始キー
;; (global-set-key "\C-x\C-j" 'skk-mode)
;; (global-set-key "\C-xj" 'skk-auto-fill-mode)
;; (global-set-key "\C-xt" 'skk-tutorial)
(setq skk-large-jisyo "~/.emacs.d/skk/SKK-JISYO.L")
(setq skk-tut-file "~/.emacs.d/skk/SKK.tut")

;; サーバーなし
(setq skk-server-host nil)

;; C-q で半角カナ入力
(setq skk-use-jisx0201-input-method t)

;; 変換時，改行でも確定
(setq skk-egg-like-newline t)
;; メッセージは日本語で
(setq skk-japanese-message-and-error t)
;; "「"を入力したら"」"も自動で挿入
(setq skk-auto-insert-paren t)
;; 漢字登録のミスをチェックする
;(setq skk-check-okurigana-on-touroku t)
;; 送り仮名が厳密に正しい候補を優先して表示する
(setq skk-henkan-strict-okuri-precedence t)
;; 句読点は , . を使う
(setq skk-kuten-touten-alist
      '(
        (jp . ("。" . "、" ))
        (en . ("．" . "，"))
        ))
;; jp にすると「。、」を使います
(setq-default skk-kutouten-type 'jp)
;; @で挿入する日付表示を半角に
;(setq skk-number-style nil)
;; 変換候補をツールチップに表示
(setq skk-show-tooltip t)
;; 変換候補をインラインに表示
(setq skk-show-inline t)
;; isearch時にSKKをオフ
;(setq skk-isearch-start-mode 'latin)
;; ．と。を動的に決定
(add-hook 'skk-mode-hook
          (lambda ()
            (save-excursion
              (goto-char 0)
              (make-local-variable 'skk-kutouten-type)
              (if (re-search-forward "．" 10000 t)
                  (setq skk-kutouten-type 'en)
                (setq skk-kutouten-type 'jp)))))
