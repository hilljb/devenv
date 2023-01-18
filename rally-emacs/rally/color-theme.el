(require 'color-theme)
;; Directories for stuff that's not in elpa or marmalade (eg:
;; blackboard):
(add-to-list 'load-path (concat user-emacs-directory "color-themes"))

;; Autoloads for color themes. Note: we have a slightly tweaked
;; version of twilight in the color-themes directory.
(autoload 'color-theme-twilight "color-theme-twilight" nil t)
(autoload 'color-theme-yellow-on-blue "yellow-on-blue-theme" nil t)
(autoload 'color-theme-blackboard "blackboard" nil t)
(autoload 'color-theme-cyberpunk "cyberpunk" nil t)

;; Default to a theme that looks reasonably nice in 256-color
;;; For reasons I can't comprehend, blackboard doesn't work properly
;;; if you call it too soon. Delaying 1 second seems to do the trick.
(add-hook 'emacs-startup-hook
          '(lambda ()
             (run-at-time "1 sec" nil 'color-theme-blackboard)))

(defun grover ()
  (interactive)
  (color-theme-cyberpunk)
  (global-rainbow-delimiters-mode))
