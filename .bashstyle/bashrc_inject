source ~/.bashstyle/colors.conf

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export CLICOLOR=1

  function color_my_prompt {
    local date_and_time="\[${RED}\][`date +%FT%T%z`]"
    local user_and_host="\[${wHITE}\][\u]"
    local current_location="\[${wHITE}\]\W"
    local git_branch_color="\[${pURPLE}\]"
    local git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local prompt_tail="\[${wHITE}\]$"
    local last_color="\[${off}\]"
    export PS1="$date_and_time $user_and_host $current_location $git_branch_color$git_branch$prompt_tail$last_color "
  }

color_my_prompt