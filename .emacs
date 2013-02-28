(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" default))))
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(add-to-list 'default-frame-alist '(font . "-unknown-Monaco-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1"))
(require 'package)
(setq package-archives '((" marmalade" . "http://marmalade-repo.org/packages/")
			 ("ELPA" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(flyspell-mode -1)
;;(iswitchb-mode 1)
;;(ido-mode 1

(setq user-fullname "Abhishek L")
(setq user-email-address "abhishekl.2006@gmail.com")

(load-theme 'solarized-light)
(require 'circe)
(setq circe-reduce-lurker-spam t)
(setq python-command "python2")

(require 'alpha)
(transparency-set-value 80)


(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;     (let (el-get-master-branch)
;;       (goto-char (point-max))
;;       (eval-print-last-sexp))))

;; (el-get 'sync)

;; (defun redo-el-get ()
;;   (interactive)
;;   (progn
;;     (ignore-errors
;;       (delete-directory "~/.emacs.d/el-get" t))
;;     (url-retrieve
;;      "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
;;      (lambda (s)
;;        (end-of-buffer)
;;        (eval-print-last-sexp)))))
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





