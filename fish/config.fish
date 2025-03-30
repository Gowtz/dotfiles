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

# for pyenv
# set -x PYENV_ROOT $HOME/.pyenv
# if test -d $PYENV_ROOT/bin
#     set -x PATH $PYENV_ROOT/bin $PATH
# end
# pyenv init - | source
#

set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -x PORT 6969
set -x TERM "xterm"
set -x QT_QPA_PLATFORMTHEME qt5ct
set TERM xterm-256color
clear
# aliases
alias py "source ~/dev/env/bin/activate.fish"
alias xampp "sudo /opt/lampp/manager-linux-x64.run"
alias ll "eza -lF --icons"
alias llt "eza --icons --tree -L 2"
alias mysql "sudo /opt/lampp/bin/mysql"
# alias tmux "tmux -u"
alias bsp "bspc config top_padding 0"
alias nll "nmcli device wifi list"
alias nmc "nmcli device wifi connect"
alias ollama "docker exec -it ollama ollama run llama3.2"
alias sql "docker exec -it DB psql -U gowtz"
alias changebg "feh --bg-fil --randomize ~/Pictures/wallpaper/random/*"
alias neo "fastfetch"
alias ps "ansible-vault view ~/.dev/Pass/PASS.csv"
# alias kubectl "minikube kubectl --"


#git aliases
alias lz "lazygit"
alias gi "git init"
alias g "git status"
alias gl "git log"
alias goo "git log --oneline"
alias ga "git add ."
alias gcm "git commit -m"

# pnpm
set -gx PNPM_HOME "/home/gowtham/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
