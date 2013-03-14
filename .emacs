(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" default))))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-frame-parameter (selected-frame) 'alpha '(80 50))
(dolist
    (frame-param-list '
     ((font . "-unknown-Inconsolata-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")
      (alpha 85 50)))
  (add-to-list 'default-frame-alist frame-param-list) 
  )

(require 'package)
(setq package-archives '((" marmalade" . "http://marmalade-repo.org/packages/")
			 ("ELPA" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ))
(package-initialize)
(flyspell-mode -1)

(setq user-fullname "Abhishek L")
(setq user-email-address "abhishekl.2006@gmail.com")

(load-theme 'sanityinc-tomorrow-bright)
(require 'circe)
(setq circe-reduce-lurker-spam t)
(setq python-command "python2")

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(load-file "~/.emacs.d/twittering-mode/twittering-mode.el")
(setq twittering-use-master-password t)
(setq browse-url-browser-function 'browse-url-generic
         browse-url-generic-program "~/bin/conkeror")

(add-to-list 'load-path "~/.emacs.d/highlight-indentation.el")
(add-to-list 'load-path "~/.emacs.d/emacs-jedi/")

(setq jedi:setup-keys t)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq read-quoted-char-radix 10)


