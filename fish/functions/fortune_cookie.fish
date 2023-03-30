function fortune_cookie
    set harlecore \
        "The future is a mystery, even to those who hold it." \
        "The universe is a vast and wondrous place, full of mystery and intrigue." \
        "Sometimes the greatest treasures can be found in the most unexpected places." \
        "True wealth is not measured in gold or silver, but in the richness of one's experiences." \
        "A single moment can change the course of history, or one's life." \
        "To achieve great things, one must be willing to take great risks." \
        "The most powerful force in the universe is the power of belief." \
        "Every journey begins with a single step, and every step counts." \
        "The road to success is often a long and winding one, but the destination is worth the journey." \
        "The future belongs to those who believe in the beauty of their dreams." \
        "Every challenge is an opportunity for growth and learning." \
        "Life is a journey, not a destination. Enjoy the ride." \
        "The power to change the world lies within each and every one of us." \
        "Happiness is not a destination, it's a state of mind." \
        "The greatest gift you can give is the gift of love." \
        "It's not what you have in life, but who you have in your life that truly matters." \
        "The mind is a powerful tool. Use it wisely." \
        "The greatest glory in living lies not in never falling, but in rising every time we fall." \
        "Believe in yourself, and all that you are. Know that there is something inside you that is greater than any obstacle." \
        "Life is like a camera: focus on the good times, develop from the negatives, and if things don't work out, take another shot." \
        "The only way to do great work is to love what you do." \
        "Life is too short to waste time on things that don't matter." \
        "The journey of a thousand miles begins with a single step." \
        "Success is not final, failure is not fatal: it's the courage to continue that counts." \
        "Life is like a box of chocolates: you never know what you're going to get." \
        "The only limit to our realization of tomorrow will be our doubts of today." \
        "Be the change you wish to see in the world." \
        "The best way to predict your future is to create it." \
        "Happiness is not something ready made. It comes from your own actions." \
        "Challenges are what make life interesting, and overcoming them is what makes life meaningful." \
        "The only person you are destined to become is the person you decide to be." \
        "The best revenge is massive success." \
        "The only way to do great work is to love what you do." \
        "Life is a game, play it to win."\
        "We are what we repeatedly do. Excellence, then, is not an act but a habit."\
        "The greatest glory in living lies not in never falling, but in rising every time we fall."\
        "Believe you can and you're halfway there."\
        "The future belongs to those who believe in the beauty of their dreams."\
        "You miss 100% of the shots you don't take."\
        "Life is not a problem to be solved, but a reality to be experienced."\
        "The only way to do great work is to love what you do."\
        "The purpose of our lives is to be happy."\
        "The only true wisdom is in knowing you know nothing." \
        "Life is a balance between holding on and letting go." \
        "Every day is a new opportunity to make a difference." \
        "The journey is the reward." \
        "Life is like a camera, focus on the good times, develop from the negatives, and if things don't work out, take another shot." \
        "Be the change you wish to see in the world." \
        "The only limit to our realization of tomorrow will be our doubts of today." \
        "The best way to predict your future is to create it." \
        "Life is like a rollercoaster, it has its ups and downs, but it's your choice whether to scream or enjoy the ride." \
        "Happiness is not something ready made. It comes from your own actions." \
        "Success is not final, failure is not fatal: it's the courage to continue that counts." \
        "yes, you can." \
        "NØ." \
        "Maybe." \
        "I don't know." \
        "I don't care." \
        "I don't think so." \
        "I don't know, but I think you should ask <<danny>>." \
        "It is certain." \
        "It is decidedly so." \
        "Without a doubt." \
        "Yes, definitely." \
        "You may rely on it." \
        "As I see it, yes." \
        "Most likely." \
        "Outlook good." \
        "Yes." \
        "Signs point to yes." \
        "Reply hazy, try again." \
        "Ask again later." \
        "Better not tell you now." \
        "Cannot predict now." \
        "Concentrate and ask again." \
        "Don't count on it." \
        "My reply is no." \
        "My sources say no." \
        "Outlook not so good." \
        "Very doubtful." \
        "The answer is not clear, ask again later." \
        "It is certain." \
        "It is decidedly so." \
        "Without a doubt." \
        "Yes, definitely." \
        "You may rely on it." \
        "As I see it, yes." \
        "Most likely." \
        "Outlook good." \
        "Yes." \
        "Signs point to yes." \
        "Reply hazy, try again." \
        "Ask again later." \
        "Better not tell you now." \
        "Cannot predict now." \
        "Concentrate and ask again." \
        "Don't count on it." \
        "My reply is no." \
        "My sources say no." \
        "Outlook not so good." \
        "Very doubtful." \
        "The answer is not clear, ask again later." \
        "It is certain." \
        "It is decidedly so." \
        "Without a doubt." \
        "Yes, definitely." \
        "You may rely on it." \
        "As I see it, yes." \
        "Most likely." \
        "Outlook good." \
        "Yes." \
        "Signs point to yes." \
        "Reply hazy, try again." \
        "Ask again later." \
        "Better not tell you now." \
        "Cannot predict now." \
        "Concentrate and ask again." \
        "Don't count on it." \
        "My reply is no." \
        "My sources say no." \
        "Outlook not so good." \
        "Very doubtful"
        
    set colors \
        green \
        red \
        blue 
    set danny (random)"%"(count $harlecore)
    set danny $harlecore[(math $danny"+1")]
    set color (random)"%"(count $colors)
    set color $colors[(math $color"+1")]
    printf (set_color white)"Black hole says :\n%s\n" (set_color $color)$danny
end
