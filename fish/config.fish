# config.fish - Fish shell configuration

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/landonrogers/.lmstudio/bin
# End of LM Studio CLI section

# Added by Windsurf
set -gx PATH /Users/landonrogers/.codeium/windsurf/bin $PATH

# Starship prompt initialization
starship init fish | source

# Local bin paths
set -gx PATH /Users/landonrogers/.local/bin $PATH
set -gx PATH $PATH ~/go/bin
set -gx PATH $PATH /Users/landonrogers/go/bin
set -gx PATH /Users/landonrogers/go/bin $PATH

# Crush function with catppuccin-frappe theme
function crush
    command crush -t catppuccin-frappe $argv
end

# Original crush command
function crush-original
    command crush $argv
end

# Aliases
alias oc='opencode'
alias cr='cargo run'
alias ls='lsd'
set -g fish_greeting
# Tmux aliases
alias ts='tmux source-file ~/.tmux.conf'
alias ta='tmux attach-session'

# Home bin path
set -gx PATH $HOME/bin $PATH

# zoxide initialization
zoxide init fish --cmd cd | source
