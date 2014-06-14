# .bash_profile

################################################################################
# call out to other sources

bash_profile_callout () {
  if [ -f $1 ] ; then . $1 ; fi
}

bash_profile_callout ~/.bashrc
bash_profile_callout ~/.bash_aliases
bash_profile_callout /etc/bash_completion


################################################################################
# ascii name

# generated on http://patorjk.com/software/taag 
# ascii art font: slant
# note: the terminal must have an appropriate font, like Courier
# run only once per terminal window, i.e. do not run on ssh

if [ -z "$SSH_CONNECTION" ] ; then
echo '
    _   ___      __          __              ____                                __
   / | / (_)____/ /_  ____  / /___ ______   / __ \_________ ___  _________  ____/ /
  /  |/ / / ___/ __ \/ __ \/ / __ `/ ___/  / / / / ___/ __ `__ \/ ___/ __ \/ __  / 
 / /|  / / /__/ / / / /_/ / / /_/ (__  )  / /_/ / /  / / / / / / /  / /_/ / /_/ /  
/_/ |_/_/\___/_/ /_/\____/_/\__,_/____/   \____/_/  /_/ /_/ /_/_/   \____/\__,_/   
'
fi


################################################################################
# Prompt

# Record unusual exit statuses in command prompt
# Log lines immediately, not just at session termination

function ipromptcmd () {
  local stat="$?"
  if [[ "$stat" -ne 0 ]] ; then
    echo "[Exit $stat]" 1>&2
  fi

  history -a

  return 0
}
export PROMPT_COMMAND=ipromptcmd
export PS1=" > "


################################################################################
# Miscellaneous

shopt -s checkwinsize
export PATH="$HOME/dev/bin:$PATH"
export EDITOR=/usr/bin/vim
complete -d cd
