function aliases
    alias gbc 'git checkout $(git branch --sort=-committerdate --format="%(refname:short)" | fzf)'
end
