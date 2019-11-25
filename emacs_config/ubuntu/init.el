
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	    '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))


;;;;    from here to config.org


(setq make-backup-file nil)
(setq auto-save-default nil)


(defalias 'yes-or-no-p 'y-or-n-p)


;;(defvar my-term-shell "/bin/bash")
;;(defadvice ansi-term (before force-bash)
;;  (interactive (list my-term-shell)))
;;(ad-activate 'ansi-term)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))






(global-set-key (kbd "<s-return>") 'ansi-term)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(when window-system (global-hl-line-mode t))

(when window-system (global-prettify-symbols-mode t))



(use-package which-key
  :ensure t
  :init
  (which-key-mode))

(use-package beacon
  :ensure t
  :init
  (beacon-mode 1))





(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq inhibit-startup-message t)


;;;;; up to here to config.org





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("02199888a97767d7779269a39ba2e641d77661b31b3b8dd494b1a7250d1c8dc1" "87a431903d22fa1cbb2becd88572e7d985e28c2253935448d0d754c13e85a980" "11986184025c9e658eeff90e95ab8e9592f40b3564a5854f9ce1eab1804abd79" "ae3a3bed17b28585ce84266893fa3a4ef0d7d721451c887df5ef3e24a9efef8c" "08a89acffece58825e75479333109e01438650d27661b29212e6560070b156cf" "1dacaddeba04ac1d1a2c6c8100952283b63c4b5279f3d58fb76a4f5dd8936a2c" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(fci-rule-color "dark green")
 '(highlight-symbol-colors
   (quote
    ("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA" "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F")))
 '(hl-paren-background-colors
   (quote
    ("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00")))
 '(hl-paren-colors (quote ("#326B6B")))
 '(org-src-block-faces (quote (("emacs-lisp" (:background "#F0FFF0")))))
 '(package-selected-packages
   (quote
    (borland-blue-theme polymode websocket organic-green-theme metalheart-theme green-phosphor-theme green-screen-theme goose-theme geiser julia-repl paredit ob-ipython ein slime yasnippet-snippets yasnippet flycheck swiper expand-region mark-multiple popup-kill-ring auctex symon dmenu diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete exwm switch-window rainbow-mode avy smex ido-vertical-mode org-bullets beacon spacemacs-theme which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 121 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))
