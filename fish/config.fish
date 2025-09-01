# source /opt/homebrew/opt/asdf/libexec/asdf.fish
# set -gx PATH $HOME/.asdf/shims $PATH
# set -gx PATH $HOME/.asdf/bin $PATH
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims


if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_vi_key_bindings
string match -q "$TERM_PROGRAM" vscode
and . (code --locate-shell-integration-path fish)
set -x LANG en_US.UTF-8
set default_path /usr/bin /usr/sbin /bin /sbin
# set homebrew /usr/local/bin /usr/local/sbin
# homebrew fix coz I hate everything
set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR "$HOMEBREW_PREFIX/Cellar"
set -gx HOMEBREW_REPOSITORY "$HOMEBREW_PREFIX/Homebrew"
fish_add_path -gP "$HOMEBREW_PREFIX/bin" "$HOMEBREW_PREFIX/sbin"
! set -q MANPATH; and set MANPATH ''
set -gx MANPATH "$HOMEBREW_PREFIX/share/man" $MANPATH
! set -q INFOPATH; and set INFOPATH ''
set -gx INFOPATH "$HOMEBREW_PREFIX/share/info" $INFOPATH

# set -gx PATH $homebrew $default_path
set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES
set -x NODE_OPTIONS '--max_old_space_size=8192'

set -x PGDATA /opt/homebrew/bin//postgres
set -x PGHOST localhost
alias start-pg 'pg_ctl -l $PGDATA/server.log start'
alias stop-pg 'pg_ctl stop -m fast'
alias show-pg-status 'pg_ctl status'
alias restart-pg 'pg_ctl reload'
# set -gx PATH /opt/homebrew/opt/postgresql@14/bin/pg_config $PATH  
# ssh-add --apple-load-keychain
# # Add this to your .bash_profile or .zprofile
# set SSH_ENV "$HOME/.ssh/agent-environment"

# function start_agent;
#     echo "Initializing ssh-agent..."
#     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "$SSH_ENV"
#     chmod 600 "$SSH_ENV"
#     . "$SSH_ENV" > /dev/null
#     /usr/bin/ssh-add $HOME/.ssh/id_ed25519;
# end

# # Source SSH settings, if applicable
# if [ -f "$SSH_ENV" ]; then
#     . "$SSH_ENV" > /dev/null
#     ps -ef | grep $SSH_AGENT_PID | grep 'ssh-agent$' > /dev/null || {
#         start_agent;
#     }
# [else; start_agent;]
# end
# Reboot OR source ~/.bash_profile OR source ~/.zprofile in your terminal(s)
# source (/opt/homebrew/bin/brew shellenv)
set -x E2E_USER_PASSWORD Us3r_p4ssw0rd
# set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH (brew --prefix)/opt/grep/libexec/gnubin $PATH
set -gx PATH (brew --prefix)/opt/findutils/libexec/gnubin $PATH
set -gx PATH (brew --prefix)/opt/gnu-sed/libexec/gnubin $PATH
set -gx PATH (brew --prefix)/opt/coreutils/libexec/gnubin $PATH
set -Ux EDITOR code
aliases

set -gx DATABASE_URL postgres://postgres@localhost:5432
set -gx DATABASE_REPLICA_URL postgres://sync_from_prod@localhost:5432
set -gx REDIS_URL redis://localhost:6379/0
set -gx REDIS_CACHE_URL redis://localhost:6379/1
set -gx PGHOST localhost
set -gx PGPORT 5432
set -gx PGUSER postgres
set -gx PGDATABASE jeancaisse_development

source docker.env
# check_docker
# check_pg_container
function c
    open $argv[1] -a "Cursor"
end

function v
    open $argv[1] -a "Visual Studio Code"
end
