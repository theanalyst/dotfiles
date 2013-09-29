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
;;(flyspell-mode -1)

(setq-default ispell-program-name "hunspell")
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
(setq custom-safe-themes t)
