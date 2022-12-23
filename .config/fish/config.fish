set PATH $PATH /usr/local/sbin
set PATH $PATH /usr/local/opt/openssl@1.1/bin
set PATH $PATH /home/dlederle/.local/bin
source ~/.asdf/asdf.fish
#set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /Users/dlederle/.ghcup/bin # ghcup-env
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /Users/dlederle/.ghcup/bin $PATH # ghcup-env
set FZF_DEFAULT_COMMAND $FZF_DEFAULT_COMMAND find . \( -name node_modules -o -name .git \) -prune -o -print
