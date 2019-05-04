git() {

  # add
  if [ "$1" == "dad" ]; then
    command curl -s https://icanhazdadjoke.com
    command git add "${@:2}"

  # commit
  elif [ "$1" == "vommit" ]; then
    command curl -s http://whatthecommit.com/index.txt
    command git commit "${@:2}"

  # stash
  elif [ "$1" == "stash" -a "$2" == "poop" ]; then
    echo "
  )  )
 (   ) (
  ) _   )
   ( \_
 _(_\ \)__
(____\___))"
    command git stash pop "${@:3}"
  else
    command git "$@"
  fi;
}
