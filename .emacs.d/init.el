;; 初めてemacsを実行する場合は、M-x package-installでuse-packageをインストールする

(keyboard-translate ?\C-h ?\C-?)
(setq make-backup-files nil)

;; This is only needed once, near the top of the file
(eval-when-compile
  (require 'use-package))

(use-package timu-macos-theme
  :ensure t
  :config
  (load-theme 'timu-macos t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(## timu-macos-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
