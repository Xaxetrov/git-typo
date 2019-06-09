git() {
  # enable zsh compatibility
  if [ -n "$ZSH_VERSION" ]; then emulate -L ksh; fi
  
  # add
  if [ "$1" = "dad" ]; then
    curl -s https://icanhazdadjoke.com
    echo
    command git add "${@:2}"

  elif [ "$1" = "ass" ]; then
    echo '
                          /\          /\
                         ( \\        // )
                          \ \\      // /
                           \_\\||||//_/
                            \/ _  _ \
                           \/|(O)(O)|
                          \/ |      |
      ___________________\/  \      /
     //                //     |____|
    //                ||     /      \
   //|                \|     \ 0  0 /
  // \       )         V    / \____/
 //   \     /        (     /
""     \   /_________|  |_/
       /  /\   /     |  ||
      /  / /  /      \  ||
      | |  | |        | ||
      | |  | |        | ||
      |_|  |_|        |_||
       \_\  \_\        \_\\'
    command git add "${@:2}"

  # commit
  elif [ "$1" = "vommit" ]; then
    curl -s http://whatthecommit.com/index.txt
    command git commit "${@:2}"

  elif [ "$1" = "commit" -a "$2" = "--amen" ]; then
    # bible array generation
    bible[0]="Let those among you who are without sin be the first to throw the stone. The crowd looked at Jesus, believing he had a good point. Then Jesus picked up a stone. - Irony 8:19"
    bible[1]="First shalt thou take out the Holy Pin. Then shalt thou count to three, no more, no less. Three shall be the number thou shalt count, and the number of the counting shall be three. Four shalt thou not count, neither count thou two, excepting that thou then proceed to three. Five is right out. Once the number three, being the third number, be reached, then lobbest thou thy Holy Hand Grenade of Antioch towards thy foe, who, being naughty in My sight, shall snuff it. - Arthur 1:2:5"
    bible[2]="Verily I say unto thee, lay thine eyes upon the field in which my fucks are grown. Behold that it is barren. - Crops 6:11"
    bible[3]="And Jesus said unto Paul, 'Come forth, and receive everlasting life.' But Paul came in fifth, and received a toaster. - Order 25:3"
    bible[4]="And the angel said unto him: 'Stop hitting yourself. Stop hitting yourself.' But low he could not. For the angel was hitting him with his own hands. - Irony 7:12"
    bible[5]="'This is my body'\n'This is my blood'\n'And this is your card'\nApostles go nuts. - Miracles 15:14"
    bible[6]="Thou shalt have dominion over all the beasts except, of course, cats. - Felines 12:17"
    bible[7]="He's not the Messiah. He's a very naughty boy. - Brian 3:28"
    bible[8]="Blessed are the cheesemakers.- Brian 22:1"
    # citation choice and output
    bibleLength=${#bible[@]}
    randomIndex=$((RANDOM % $bibleLength))
    echo ${bible[$randomIndex]}
    command git commit --amen "${@:3}"

  # stash
  elif [ "$1" = "stash" -a "$2" = "poop" ]; then
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

GIT() {
  git "$@" | tr [a-z] [A-Z]
}
