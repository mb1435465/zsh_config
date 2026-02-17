#!/bin/bash

SESSION="mbrown's session"

if tmux has-session -t "$SESSION" 2>/dev/null; then
    tmux attach-session -t "$SESSION"
else 
    tmux new-session -d -s "$SESSION" -n 'neovim'

    tmux new-window -a -t "$SESSION" -n 'run commands'

    tmux select-window -t "$SESSION:neovim":
    
    tmux attach-session -t "$SESSION"
fi 

