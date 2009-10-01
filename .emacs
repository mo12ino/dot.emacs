; 
(setq load-path
      (append (list
               (expand-file-name "~/.emacs.d/conf/")
               )
              load-path))

(load "00-common")
(load "01-mac")
(load "10-skk")
(load "50-c++")
