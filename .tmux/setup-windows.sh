#!/bin/bash

SESSION="mbrown"

if tmux has-session -t "$SESSION" 2>/dev/null; then
    tmux attach-session -t "$SESSION"
else 
    tmux new-session -d -s "$SESSION" -n 'main'

    tmux select-window -t "$SESSION:main":
    
    tmux attach-session -t "$SESSION"
fi 

