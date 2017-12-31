#!/usr/bin/env bash

tmux set -g @cpu_low_icon "ᚋ"
tmux set -g @cpu_medium_icon "ᚌ"
tmux set -g @cpu_high_icon "ᚍ"

TRS='#[fg=colour255,bold]#[default]'
TLS='#[fg=colour255,bold]#[default]'
GIT_BR='#[fg=white,bold]#(cd #{pane_current_path}; git rev-parse --abbrev-ref HEAD 2>/dev/null)#[default]'

TMUX_BG_COLOUR='colour232'

TMUX_PANE_FORMAT='[#I#F]#W#[default]'
TMUX_PANE_C_COLOUR='colour255'
TMUX_PANE_L_COLOUR='colour255'
TMUX_PANE_COLOUR='colour240'

tmux set-window-option -g status-fg colour255
tmux set-window-option -g status-bg "$TMUX_BG_COLOUR"
tmux set-window-option -g status-left "#[bg=colour255] #{?client_prefix,#[fg=colour232]#[bold]🞉, }#[bg=colour255,fg=colour232] #S #[fg=colour232,reverse] "
tmux set-window-option -g status-left-length 60
tmux set-window-option -g status-right "$TRS #{battery_status_fg}#{battery_percentage}#[default] $TRS #{cpu_fg_color}#{cpu_icon}#{cpu_percentage}#[default] $TRS #[fg=colour231]#S:#I:#P $TRS#[fg=colour231,nobold] %a #[bold]%H:%M:%S "
# tmux set-window-option -g status-right "$GIT_I$GIT_BR $TRS #[fg=colour231]#S:#I:#P $TRS#[fg=colour231] #H $TRS#[fg=colour231,nobold] %b %d %a #[bold]%H:%M "
tmux set-window-option -g status-right-length 80
tmux set-window-option -g window-status-current-format "$TMUX_PANE_FORMAT$TLS"
tmux set-window-option -g window-status-current-attr none
tmux set-window-option -g window-status-current-bg "$TMUX_BG_COLOUR"
tmux set-window-option -g window-status-current-fg "$TMUX_PANE_C_COLOUR"
tmux set-window-option -g window-status-format "$TMUX_PANE_FORMAT$TLS"
tmux set-window-option -g window-status-attr none
tmux set-window-option -g window-status-bg "$TMUX_BG_COLOUR"
tmux set-window-option -g window-status-fg "$TMUX_PANE_COLOUR"
tmux set-window-option -g window-status-last-attr none
tmux set-window-option -g window-status-last-bg "$TMUX_BG_COLOUR"
tmux set-window-option -g window-status-last-fg "$TMUX_PANE_L_COLOUR"
tmux set-window-option -g window-status-activity-attr bold
tmux set-window-option -g window-status-activity-bg colour127
tmux set-window-option -g window-status-activity-fg black
tmux set-window-option -g window-status-bell-attr bold
tmux set-window-option -g window-status-bell-bg red
tmux set-window-option -g window-status-bell-fg black
tmux set-window-option -g window-status-content-attr bold
tmux set-window-option -g window-status-content-bg colour226
tmux set-window-option -g window-status-content-fg black
