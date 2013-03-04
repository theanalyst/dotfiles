(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" default))))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)



(require 'package)
(setq package-archives '((" marmalade" . "http://marmalade-repo.org/packages/")
			 ("ELPA" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(flyspell-mode -1)
(load-library "alpha")
(set-frame-parameter (selected-frame) 'alpha '(80 50))
(add-to-list 'default-frame-alist ')
(add-to-list
 'default-frame-alist '((alpha 85 50)
                        (font . "-unknown-Monaco-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")))

(setq user-fullname "Abhishek L")
(setq user-email-address "abhishekl.2006@gmail.com")

(load-theme 'solarized-light)
(load-theme 'sanityinc-tomorrow-bright)
(require 'circe)
(setq circe-reduce-lurker-spam t)
(setq python-command "python2")


;;x(require 'alpha)

;;(load-library "alpha")
;;(transparency-set-initial-value 80)
;;(transparency-set-value 80)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(load-file "~/.emacs.d/twittering-mode/twittering-mode.el")
(setq twittering-use-master-password t)
(setq browse-url-browser-function 'browse-url-generic
         browse-url-generic-program "~/bin/conkeror")


(add-to-list 'load-path "~/.emacs.d/highlight-indentation.el")
(add-to-list 'load-path "~/.emacs.d/emacs-jedi/")
(package-initialize)
(elpy-enable)
(setq jedi:setup-keys t)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq read-quoted-char-radix 10)
