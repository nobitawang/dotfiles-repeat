##
# Source from http://peepcode.com/system/uploads/2007/setprompt.txt
# Includes current git branch in tcsh prompt.
#
# USAGE:
#
# 1) Save this script as ~/.git-branch.csh
# 2) In .cshrc, include this line:
#
#      alias precmd "source ~/.git-branch.csh"
#
# AUTHOR
#
#   Original from http://acts.as.streeteasy.com/archives/2007/12/19/git_in_your_prompt/
#   Modified for tcsh by Geoffrey Grosenbach http://peepcode.com
#   Modified for personal flavor by repeat
setenv GIT_BRANCH_CMD "sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/ <\1>/'"

if ( ! $?WINDOW ) then
    set prompt = "%{[32m%}%n%{[0m%}@%{[36m%}%m%{[0m%} [%{[32m%}%~%{[1;35m%}`$GIT_BRANCH_CMD`%{[0m%}] (%{[36m%}%T%{[0m%}) "
else
    set prompt = "%{[32m%}%n%{[0m%}@%{[36m%}%m%{[0m%} [%{[32m%}%~%{[1;35m%}`$GIT_BRANCH_CMD`%{[0m%}] [%{[36m%}%T%{[0m%}/%{[36m%}W$WINDOW%{[0m%}] "
endif
