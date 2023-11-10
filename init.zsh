# Ensure exa is available
if (( ${+commands[eza]} )); then
  alias ls='eza --git -@ -g -mU --icons --time-style=long-iso --color=automatic --group-directories-first'
elif (( ${+commands[exa]} )); then
  alias ls='exa -@ -g -mU --icons --time-style=long-iso --color=automatic --group-directories-first'
else
  return 1
fi

export EXA_COLORS='da=1;34:gm=1;34'

alias ll='ls -lh'        # Long format, git status
alias l='ll -a'               # Long format, all files
alias lr='ls -Tlh'              # Long format, recursive as a tree
alias tree='ls -Tl --no-permissions --no-filesize --no-user --no-time'
alias lx='ll -sextension'     # Long format, sort by extension
alias lk='ll -ssize'          # Long format, largest file size last
alias lt='ll -smodified'      # Long format, newest modification time last
alias lc='ll -schanged'       # Long format, newest status change (ctime) last
