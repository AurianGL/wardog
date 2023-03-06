function fish_greeting
    set harlecore \
        'Take my heart away' \
        'As if I could ever be the one you love' \
        "I'm here whenever you want" \
        "'Cause it feels so good, I can't get enough" \
        '(The one you love)' \
        "You know you're all that I want" \
        "But it hurts me when you say I'm the one" \
        "So touch my body" \
        "If that's what you want" \
        "But don't touch my heart" \
        "I lie alone in my bed" \
        "And I wonder if I'll see you again" \
        "I know I'm playin' pretend" \
        "But the visions of you won't leave my head" \
        "All night" \
        "I want you" \
        "My heart has bloomed" \
        "I wanna lose it" \
        "Ti amo eroina" \
        "Anch'io ti amo" \
        "Time stands still around me" \
        "Teardrops feel like showers"
    set colors \
        red \
        green \
        yellow \
        blue \
        magenta \
        cyan \
        brred \
        brgreen \
        bryellow \
        brblue \
        brmagenta \
        brcyan 
    set danny (random)"%"(count $harlecore)
    set danny $harlecore[(math $danny"+1")]
    set color (random)"%"(count $colors)
    set color $colors[(math $color"+1")]
    printf (set_color white)"wise Daemon says :\n%s\n" (set_color $color)$danny
end
