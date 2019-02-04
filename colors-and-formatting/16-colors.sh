!/bin/bash

# Background
for clbg in {40..47} {100..107} 49 ; do
  # Foreground
  for clfg in {30..37} {90..97} 39 ; do
    # Formatting
    for attr in 0 1 2 4 5 7 ; do
      # Print the result
      echo -en "\e[${clbg};${attr};${clfg}m ^[${clbg};${attr};${clfg}m \e[0m"
    done
    echo # New line
  done
done
