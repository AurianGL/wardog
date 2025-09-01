function flip_coin
  set -l start_time (date +%s)
  set -l total_time 0

  set -l min_minutes $argv[1]
  set -l max_minutes $argv[2]
 
  set -l rand_num (seq $min_minutes $max_minutes | shuf | head -n1)
        
  set -l rand_seconds (echo "$rand_num * 60" | bc)
  # Wait for the random number of seconds
  sleep $rand_seconds

  # Display a notification and ask the user to flip a coin
  set result (osascript -e 'display notification "Flip a coin" with title "Coin Flip" sound name "default"')
  set res (read -P "flip a coin ? ")

  # Display the result of the coin flip
  if test "$res" = "yes"
      set -l coin (seq 0 1 | shuf | head -n1)
      if test "$coin" = "0"
          echo "The result is heads"
      else if test "$coin" = "1"
          echo "The result is tails"
      else
          echo "Invalid input"
          return
      end
  end
  # Relaunch the script from the start
  echo "Relaunching the script..."
  flip_coin $min_minutes $max_minutes
end
