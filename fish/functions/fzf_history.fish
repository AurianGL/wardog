function fzf_history
    history | rg $argv | fzf
end
