;; Diese Datei mit Ihrer Persönlichen Umgebung kann an 'guix home reconfigure'
;; übergeben werden, um den Inhalt Ihres Profils nachzubilden. Sie ist
;; "symbolisch", gibt also nur die Namen der Pakete an. Um genau das gleiche
;; Profil herauszubekommen, müssen Sie auch die verwendeten Kanäle nachbilden,
;; wie "guix describe" sie anzeigt. Siehe den Abschnitt "Guix nachbilden"
;; im Handbuch.

(use-modules
  (gnu home)
  (gnu packages)
  (gnu services)
  (guix gexp)
  (gnu home services shells))

(home-environment
  (packages
    (map specification->package
         (list "emacs-rainbow-delimiters" ;; Emacs Packages
               "emacs-lsp-treemacs"
               "emacs-lsp-ui"
               "emacs-ivy-rich"
               "emacs-company-box"
               "emacs-company"
               "emacs-go-mode"
               "emacs-lsp-mode"
               "emacs-counsel"
               "emacs-use-package"
               "emacs-ivy"
               "emacs-which-key"
               "font-fira-code"
               "emacs-doom-themes"
               "emacs-doom-modeline"
               "emacs"
	       ;;Home Packages
	       "htop"
	       "ungoogled-chromium"
	       "ublock-origin-chromium"
	       "alacritty"
	       "flatpak"
	       
	       ;;Fonts
	       "font-fira-code"
	       )))
  (services
    (list (service
            home-bash-service-type
            (home-bash-configuration
              (bash-logout
                (list (local-file ".//.bash_logout" "bash_logout"))))))))
