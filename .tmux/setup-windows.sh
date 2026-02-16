#!/bin/bash

SESSION="mbrown's session"

if tmux has-session -t "$SESSION" 2>/dev/null; then
    tmux attach-session -t "$SESSION"
else 
    tmux new-session -d -s "$SESSION" -n 'main'

    tmux new-window -a -t "$SESSION" -n 'nvim1'
    tmux new-window -a -t "$SESSION" -n 'nvim2'
    tmux new-window -a -t "$SESSION" -n 'run_commands'
    tmux new-window -a -t "$SESSION" -n 'misc'

    tmux select-window -t "$SESSION:main"
    
    tmux attach-session -t "$SESSION"
fi 

