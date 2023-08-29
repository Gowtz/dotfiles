function fish_greeting
end
function fish_right_prompt
end
# bob the fish Config
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
# ENNV Variable

set -x PORT 6969
set TERM  xterm-256color
# aliases
alias py "source ~/dev/env/bin/activate.fish"
alias xampp "sudo /opt/lampp/manager-linux-x64.run"
alias ll "exa -lF"
alias mysql "sudo /opt/lampp/bin/mysql"
alias tmux "tmux -u"
alias blender "~/dev/blender-3.5.0-linux-x64/blender"
alias bsp "bspc config top_padding 0"
alias neofetch "neofetch --disable cols"
alias mongoshc 'mongosh "mongodb+srv://testing.uoleenz.mongodb.net/myFirstDatabase" --apiVersion 1 --username Gowtham'
alias nll "nmcli device wifi list"
alias nmc "nmcli device wifi connect"
