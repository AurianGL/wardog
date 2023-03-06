 if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_vi_key_bindings
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
set -x LANG en_US.UTF-8
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
source /opt/homebrew/opt/asdf/libexec/asdf.fish
