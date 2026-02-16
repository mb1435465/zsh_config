#!/bin/bash

SESSION=$(tmux display-message -p "#S")

WINDOW_COUNT=$(tmux list-windows -t "$SESSION" | wc -l)

if [ "$WINDOW_COUNT" -eq 1]; then
    tmux rename-window -t "$SESSION:1" 'main'
    tmux new-window -t "$SESSION:2" 'dev'
    tmux new-window -t "$SESSION:3" 'git'
    tmux new-window -t "$SESSION:4" 'monitoring'
    tmux new-window -t "$SESSION:5" 'misc'

    tmux select-window -t "$SESSION:1"
fi 
