# Most ASCII art found on asciiart.eu, unknown artists

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

  # blame
  elif [ "$1" = "blam" ]; then
    clear; echo '
      )
     (
    .-`-.
    :   :
    :TNT:
    :___:'
    sleep 0.5; clear; echo '
    \|/
   - o -
    /-`-.
    :   :
    :TNT:
    :___:'
    sleep 0.5; clear; echo '


    .---.
    : | :
    :-o-:
    :_|_:'
    sleep 0.5; clear; echo '


    .---.
    (\|/)
    --0--
    (/|\)'
    sleep 0.5; clear; echo "


   '.\|/.'
   (\   /)
   - -O- -
   (/   \)
   ,'/|\'."
    sleep 0.5; clear; echo '

`.  \ | /  ,`
  `. `.` ,`
 ( .`.|.` .)
 - ~ -0- ~ -
 ('
    sleep 0.5; clear; echo '
`,`|`.` )
  .` .`. `.
,`  / | \  `.
    \ `  "
 ` . `.` ,`
 . `` ,`. "
   ~ (   ~ -
`'
    sleep 0.5; clear; echo '
. `,`|` ` .
  .`  "  `
,   ` , `  `

   (  ) (
    ) ( )
    (  )
     ) /
    ,---.'
    sleep 1; clear
    command git blame "${@:2}"

  # commit
  elif [ "$1" = "vommit" ]; then
    curl -s http://whatthecommit.com/index.txt
    command git commit "${@:2}"

  elif [ "$1" = "commit" -a "$2" = "--amen" ]; then
    # bible array generation
    bible[0]="And Jesus said unto Paul, 'Come forth, and receive everlasting life.' But Paul came in fifth, and received a toaster. - Order 25:3"
    bible[1]="And the angel said unto him: 'Stop hitting yourself. Stop hitting yourself.' But low he could not. For the angel was hitting him with his own hands. - Irony 7:12"
    bible[2]="Blessed are the cheesemakers.- Brian 22:1"
    bible[3]="First shalt thou take out the Holy Pin. Then shalt thou count to three, no more, no less. Three shall be the number thou shalt count, and the number of the counting shall be three. Four shalt thou not count, neither count thou two, excepting that thou then proceed to three. Five is right out. Once the number three, being the third number, be reached, then lobbest thou thy Holy Hand Grenade of Antioch towards thy foe, who, being naughty in My sight, shall snuff it. - Arthur 1:2:5"
    bible[4]="He's not the Messiah. He's a very naughty boy. - Brian 3:28"
    bible[5]="Let those among you who are without sin be the first to throw the stone. The crowd looked at Jesus, believing he had a good point. Then Jesus picked up a stone. - Irony 8:19"
    bible[6]="'This is my body'\n'This is my blood'\n'And this is your card'\nApostles go nuts. - Miracles 15:14"
    bible[7]="Thou shalt have dominion over all the beasts except, of course, cats. - Felines 12:17"
    bible[8]="Verily I say unto thee, lay thine eyes upon the field in which my fucks are grown. Behold that it is barren. - Crops 6:11"
    # citation choice and output
    bibleLength=${#bible[@]}
    randomIndex=$((RANDOM % $bibleLength))
    echo ${bible[$randomIndex]}
    command git commit --amend "${@:3}"

  # remote
  elif [ "$1" = "remote" -a "$2" = "dad" ]; then
    curl -s https://icanhazdadjoke.com
    echo
    command git remote add "${@:3}"

  # reset
  elif [ "$1" = "rest" ]; then
    echo "Thank you, I was tired..."
    noise[0]="*snore*"
    noise[1]="zzz"
    noiseLength=${#noise[@]}
    if [ "$2" = "--hard" ]; then
      noiseDuration=10
    elif [ "$2" = "--soft" ]; then
      noiseDuration=3
    else
      noiseDuration=5
    fi
    for ((i=0; i<$noiseDuration; i++)); do
      sleep 1
      # noise choice and output
      randomIndex=$((RANDOM % $noiseLength))
      echo ${noise[$randomIndex]}
    done
    sleep 1
    echo "Wow nice nap !"
    command git reset "${@:2}"

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

# other functions

GIT() {
  # convert output to all uppercase
  git "$@" | tr [a-z] [A-Z]
}

got() {
  if [ "$1" = "checkout" ]; then
    echo "Beware, some people did that and ended up in detached HEAD state."
  else
    echo "You spend too much time watching series."
  fi;
  git "$@"
}

if ! type gti &> /dev/null; then
  gti () {
    # invert output lines
    git "$@" | awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j--] }'
  }
fi

gut() {
  # german proverb array generation
  proverb[0]="Alles hat ein Ende, nur die Wurst hat zwei."
  proverb[1]="Da liegt der Hund begraben."
  proverb[2]="Das ist mir Wurst."
  proverb[3]="Das Blaue vom Himmel versprechen."
  proverb[4]="Das kannst du deiner Oma erzählen."
  proverb[5]="Das Leben ist kein Ponyhof."
  proverb[6]="Die Kirche im Dorf lassen."
  proverb[7]="Du gehst mir auf den Keks."
  proverb[8]="Fremdschämen."
  proverb[9]="Ich glaub ich spinne."
  proverb[10]="Ich verstehe nur Bahnhof."
  proverb[11]="Ins Gras beißen."
  proverb[12]="Jetzt haben wir den Salat."
  proverb[13]="Kabelsalat."
  proverb[14]="Kein Schwein war da."
  proverb[15]="Klappe zu, Affe tot."
  proverb[16]="Kummerspeck."
  proverb[17]="Leben ist kein Ponyhof."
  proverb[18]="Leben wie Gott in Frankreich."
  proverb[19]="Luftschloss."
  proverb[20]="Mein Englisch ist unter aller Sau."
  proverb[21]="Nul acht funfzehn."
  proverb[22]="Schlafen wie ein Murmeltier."
  proverb[23]="Sie hat einen Vogel."
  proverb[24]="Sie hat nicht alle Tassen im Schrank."
  proverb[25]="Sie spielt die beleidigte Leberwurst."
  proverb[26]="Treppenwitz."
  proverb[27]="Was Hänschen nicht lernt, lernt Hans nimmermehr."
  proverb[28]="Wo sich Fuchs und Hase gute Nacht sagen."
  # citation choice and output
  proverbLength=${#proverb[@]}
  randomIndex=$((RANDOM % $proverbLength))
  echo ${proverb[$randomIndex]}
  git "$@"
}
