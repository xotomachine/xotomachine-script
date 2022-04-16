# COLLAPSE_PWD
#!/bin/bash
function collapse.pwd() {  echo $(pwd | sed -e "s,^$HOME,~,"); };

# SELECT FOLDER
#!/bin/bash
function select.folder() {
  dirs=($1/*);
  f=0;
  for dirname in "${dirs[@]}"; do
    echo "$((++f)): $dirname";
  done
  read "selection?Select $2 > ";
  cd $dirs[$selection];
};

alias sf="select.folder";

# GETPID
function getPID() {  ps ax | grep "$@"  };
function pp() { cd ~ };

# PD
function pd() {
  popd >/dev/null 2>/dev/null;
  if [ $? -eq 1 ]; then
    cd ~;
  fi
};

# SELECT WORKSPACE
function select.workspace() {  select-folder "/workplace/$USER" "Workspace"; };

alias sw="select.workspace"

# OTHER
function ba.snaptog() {
  echo "";
  echo "Enable snap-to-grid for icons on the desktop and in other icon views? (y/n)";
  read -r response;
  if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist;
    /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist;
    /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist;
  fi
};

# CAT ZSH
function ba.lookup() {
  #stores $1 argument passed to greet
  user=$(whoami);
  echo "Current account is $user";
  echo "Enter word to lookup: ";
  read word;
  echo "What do you want to see for the word: $word";
  echo "Enter a number which corresponds to the following choices: ";
  echo """;
  Enter 1: synonyms;
  Enter 2: definitions;
  Enter 3: antonyms;
  Enter 4: examples;
  Enter 5: rhymes;
  """;
  read user_choice;
  case $user_choice in
  "1")
    result="synonyms"
    ;;
  "2")
    result="definitions"
    ;;
  "3")
    result="antonyms"
    ;;
  "4")
    result="examples"
    ;;
  "5")
    result="rhymes"
    ;;
  esac
  echo "Result is $result";
  word_response=$(curl -s -H "Content-Type: application/json" -X GET curl 'https://wordsapiv1.p.rapidapi.com/words/'$word'/'$result'' \ -H 'X-RapidAPI-Key: uACVlHd0WmmshZfOsemDMiJq9khKp1UaMjJjsn1BlJmbV59JJa');
  echo $word_response | cut -d "[" -f2;
};
