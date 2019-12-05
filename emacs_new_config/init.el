
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("ELPA" . "https://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(unless (package-installed-p 'spacemacs-theme)
  (package-refresh-contents)
  (package-install 'spacemacs-theme))



(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#da8548" "#61afef" "#c678dd" "#1f5582" "#abb2bf"])
 '(custom-enabled-themes (quote (zerodark)))
 '(custom-safe-themes
   (quote
    ("ae3a3bed17b28585ce84266893fa3a4ef0d7d721451c887df5ef3e24a9efef8c" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(doc-view-continuous t)
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(package-selected-packages
   (quote
    (green-phosphor-theme company-jedi company-shell slime-company company-irony company-c-headers flycheck-clang-analyzer helm linum-relative projectile fancy-battery zerodark-theme async flycheck expand-region mark-multiple popup-kill-ring yasnippet-snippets yasnippet swiper auctex julia-repl paredit slime geiser exwm symon dmenu diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode rainbow avy smex ido-vertical-mode org-bullets beacon spacemacs-theme which-key use-package)))
 '(pdf-view-midnight-colors (quote ("#b2b2b2" . "#292b2e"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
