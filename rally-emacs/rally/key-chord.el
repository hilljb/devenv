;;Key chords
(defun switch-to-previous-buffer ()
    "Switch to previously open buffer.
  Repeated invocations toggle between the two most recently open buffers."
    (interactive)
    (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun jakify ()
  (interactive)

  (key-chord-define-global "yy" 'beginning-of-buffer)
  (key-chord-define-global "nn" 'end-of-buffer)
  (key-chord-define-global "JJ" 'switch-to-previous-buffer)
  (key-chord-define-global "jj" 'avy-goto-char)
  (key-chord-define-global "ff" 'projectile-find-file)
  (key-chord-define-global "gg" 'goto-line)
  (key-chord-mode +1)

  (color-theme-cyberpunk)
  (global-rainbow-delimiters-mode))
