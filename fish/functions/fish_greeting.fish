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

    set howbad \
        "> Your spotify was middle-school-warped-tour-succulent-growing-indie-pop-make-beats-in-your-mom's-basement bad." \
        "> classic-rock-radio-station bad" \
        "> wore-spray-paint-respirator-non-ironically bad" \
        "> let's-do-this-one-more-time bad" \
        "> put-it-into-speed-drive bad" \
        "> shouting-jibberish-to-chop-suey bad" \
        "> adult-skateboarder-dads-still-cool-make-beats-in-your-mom's-basement bad" \
        "> 60-dollar-white-tshirt bad" \
        "> ufo-truther bad" \
        '> I-have-a-lot-of-opinions-about-the-new-Star-Wars-movies bad' \
        '> napping-in-your-mancave bad' \
        '> proud-of-travis-for-flying-again bad' \
        '> time-traveling-back-to-when-flip-phones-were-cool bad' \
        "> I'm-just-here-for-the-ride bad" \
        'I need to go recalibrate my taste levels.' \
        "You're too trendy for your own good" \
        "You are 3% basic." \
        "Oh wow Born Gold and ORTIES!" \
        "Your taste is so obscure that's so cool I bet you're super interesting."

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
    set danny (random)"%"(count $howbad)
    set danny $howbad[(math $danny"+1")]
    set color (random)"%"(count $colors)
    set color $colors[(math $color"+1")]
    printf (set_color white)"wise Daemon says :\n%s\n" (set_color $color)$danny
end
