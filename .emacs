(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(fancy-splash-image "/home/juliano/Pictures/wpprs/synth.jpg")
 '(package-selected-packages
   (quote
    (jedi flycheck pyenv-mode material-theme elpy better-defaults)))
 '(python-shell-interpreter "python"))
;; Disable menu bars and things from the emacs GUI
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
;; Add Zone mode to Emacs
(require 'zone)
(zone-when-idle 120)

 (defun lock-screen ()
   "Lock screen using (zone) and xtrlock
 calls M-x zone on all frames and runs xtrlock"
   (interactive)
   (save-excursion
     ;(shell-command "xtrlock &")
     (set-process-sentinel
      (start-process "xtrlock" nil "xtrlock")
      '(lambda (process event)
         (zone-leave-me-alone)))
     (zone-when-idle 1)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------

(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    ein
    elpy
    flycheck
    py-autopep8
    material-theme))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------

;;(setq inhibit-startup-message t) ;; hide the startup message
(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally
(elpy-enable)
;; (elpy-use-ipython)
(setq elpy-rpc-backend "jedi")  
(add-hook 'python-mode-hook 'jedi:setup)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
(require 'py-autopep8)
(setq python-shell-interpreter "ipython"
    python-shell-interpreter-args "--simple-prompt -i")
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
;; Python console is buggy in this version of emacs
(with-eval-after-load 'python
  (defun python-shell-completion-native-try ()
    "Return non-nil if can trigger native completion."
    (let ((python-shell-completion-native-enable t)
          (python-shell-completion-native-output-timeout
           python-shell-completion-native-try-output-timeout))
      (python-shell-completion-native-get-completions
       (get-buffer-process (current-buffer))
       nil "_"))))


;; init.el ends here
