function random_notification
    set -l start_time (date +%s)
    set -l total_time 0

    set -l min_minutes $argv[1]
    set -l max_minutes $argv[2]
    while true
        # Generate a random number between 1 and 5 (inclusive)
        set -l rand_num (seq $min_minutes $max_minutes | shuf | head -n1)
        
        set -l rand_seconds (echo "$rand_num * 60" | bc)
        # Wait for the random number of seconds
        sleep $rand_seconds

        # Send a notification
       fortune_cookie

        set -l script (printf 'display notification "Trigger neuroplasticity!" with title "R/B/F ?"')
        
        osascript -e "$script"

        # Update the total time
        set -l end_time (date +%s)
        set -l elapsed_time (echo "$end_time - $start_time" | bc)
        set -l total_time (echo "$total_time + $elapsed_time" | bc)
        set -l start_time $end_time
        echo "Total time: $total_time seconds"
    end
end
