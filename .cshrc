alias precmd "source ~/.git-branch.csh"
#
umask 022
cd $HOME
#
alias . "pwd"
alias c "cls"
alias cd. "pwd"
alias cd.. "cd .."
alias cd/ "cd /"
alias cd10 "cd ../../../../../../../../../.."
alias cd2 "cd ../.."
alias cd3 "cd ../../.."
alias cd4 "cd ../../../.."
alias cd5 "cd ../../../../.."
alias cd6 "cd ../../../../../.."
alias cd7 "cd ../../../../../../.."
alias cd8 "cd ../../../../../../../.."
alias cd9 "cd ../../../../../../../../.."
alias cdw "cd ~/WWW"
alias cleartag "( git tag -l | xargs git tag -d ) && gv"
alias cls "/usr/bin/tput clear"
alias g "grep --color --mmap -R"
alias gti "git"
alias gv "git pull -v"
alias i "irssi"
alias k "cd ~/work"
alias la "ls -al"
alias less "/usr/bin/less -EmrSw"
alias more "less"
alias psm "psu $USER"
alias psme "ps -auxwww -U repeat"
alias q "exit"
alias s "/usr/local/bin/screen -U"
alias sd "screen -URD"
alias sl "ls"
alias ssh "/usr/bin/ssh -4 -C -e none -o ForwardAgent=yes"
alias v "vim"
alias vc "v ~/.cshrc"
alias vv "v ~/.vimrc"
#
set autoexpand
set autolist
set history = 5000
set mail = (1 /var/mail/$USER)
set path = (~/bin ~)
set path = ($path /usr/local/bin /usr/local/sbin /usr/X11R6/bin /usr/bin)
set path = ($path /usr/sbin /usr/games /bin /sbin /stand)
set savehist = 5000
#
setenv BLOCKSIZE "k"
setenv LANG "zh_TW.UTF-8"
setenv LC_ALL "zh_TW.UTF-8"
setenv LESS "-EmrSw"
setenv LESSCHARDEF "8bcccbcc18b95.."
setenv LSCOLORS "gxfxcxdxbxegedabagacad"
setenv PAGER "/usr/bin/less"
#
if ( $OSTYPE == FreeBSD  || $OSTYPE == DragonFly ) then
  alias colorls "env CLICOLOR_FORCE /bin/ls -aFGg"
  alias ls "ls-F -aFGg"
  alias telnet "/usr/local/bin/zh-telnet"
  setenv EDITOR "/usr/local/bin/vim"
  setenv VISUAL $EDITOR
else
  alias colorls "env CLICOLOR_FORCE /bin/ls -aF --color=always"
  alias ls "ls-F -aF --color=always"
  setenv EDITOR "/usr/bin/vim"
  setenv VISUAL $EDITOR
endif
