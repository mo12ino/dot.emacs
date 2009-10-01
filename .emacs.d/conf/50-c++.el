(add-hook 'cperl-mode-hook
          (function
           (lambda ()
             ;; offset customizations not in my-c-style
             (c-set-offset 'member-init-intro '+)
             (c-set-offset 'stream-op 'c-lineup-streamop)
             (c-set-offset 'arglist-close 'c-lineup-close-paren)
             (setq tab-width 2)
             (setq indent-tabs-mode nil)
             ;;(c-toggle-auto-hungry-state 1)
             (define-key c-mode-base-map "\C-m" 'newline-and-indent)
             )))
