if [ -n "$SSH_CLIENT" ]; then text=" ssh-session"
fi

prompt_icon() {
  exit_code=$?
  #If previous command failed, show angry emoji. Otherwise, star emoji.
  if [ $exit_code -eq 0 ]; then
    printf $'\xE2\xAD\x90';
  else
    printf $'\xF0\x9F\x98\xA1';
  fi
}

export PS1=$'\[\e[1;35m\]\u@\h:\w${text}$(prompt_icon) \[\e[m\] '
