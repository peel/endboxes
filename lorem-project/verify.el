(progn 
  (let ((tmp-buffer (generate-new-buffer "sample")))
    (switch-to-buffer tmp-buffer))
  (message (concat "Sandbox: " (nix-current-sandbox)))
  (message (concat "From sandbox: " (shell-command-to-string "hello")))
  (switch-to-buffer-other-window "*Messages*"))
