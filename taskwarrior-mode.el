(defun taskwarrior ()
  (interactive)
  (kill-buffer "*Taskwarrior*")
  (set-buffer (get-buffer-create "*Taskwarrior*"))
  (term-mode)
  (term-exec (current-buffer) "Taskwarrior" "task" nil (list "unblocked"))
  (switch-to-buffer "*Taskwarrior*"))
