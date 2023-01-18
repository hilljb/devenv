;; http://stackoverflow.com/questions/9435019/how-do-i-source-my-zshrc-within-emacs
(defun setup-path-from-zsh ()
  (let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
    (setenv "PATH" path)
    (setq exec-path
          (append
           (split-string-and-unquote path ":")
           exec-path))))

(setup-path-from-zsh)

