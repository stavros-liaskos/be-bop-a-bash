#!/bin/bash

########################
# Git autocompletion
########################
source ~/git-completion.bash


###########
# ALIASES #
###########
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias qfind="find . -name "
# custom commands
alias decode="base64 -D <<< "
alias hgrep="history | grep "
alias cat="ccat"

# routes
alias dock="cd ~/developer/docker-dev-server"
alias vc="cd ~/developer/repos/vc/"
alias spar="cd ~/developer/repos/sparwelt/"
alias nuxt="cd ~/developer/repos/bitbucket/nuxt/"
alias nice="cd ~/developer/repos/nice-sparwelt-editor/"
alias ~="cd ~"
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias ....='cd ../../../'                   # Go back 3 directory levels
alias .....='cd ../../../../'               # Go back 4 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

# docker commands
alias dup="cd ~/developer/docker-dev-server &&  docker-sync start && docker-compose -f docker-compose-mac.yml up"
#alias dup2="cd ~/developer/docker-dev-server && docker-compose -f docker-compose-mac.yml up"
alias dup2="cd ~/developer/docker-dev-server && docker-compose up"
alias dre="docker exec -it spw-server-php-56 /bin/bash service php5-fpm restart"
alias dsh="docker exec -it spw-server-php-56 bash"
alias dcs="docker exec -it spw-server-php-56 bash -c 'rm -rf /dev/shm/* && service php5-fpm restart'"
alias dxdebug="docker exec -it spw-server-php-56 xdebug-off"

dstop() { docker stop $(docker ps -a -q); }
drm() { docker rm $(docker ps -a -q); }
drmi() { docker rmi $(docker images -q); }

# faster commands
alias lls="ls -lah"
alias ll="ls -lah"
alias lll="ls -lah"
alias vagrantDown="sh ~/vagrantDown.sh"
alias gitrm="git ls-files --deleted -z | xargs -0 git rm"
alias notify="tput bel"			    # i.e. sleep 10; notify    , will ring a bell when execution is finished

# reset default commands
alias mv='mv -iv'
alias rm='rm -i -v'
alias cp='cp -iv'
alias ls='ls -GFh'
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias sudo='sudo '			    # Enable aliases to be sudo’ed

# tar/zip commands
alias tarc="tar cvf"
alias tarz="tar cvzf"
alias tar2="tar cvfj"
alias zip="zip -r"

# git commands
alias status="git status"
alias sta="git status"
alias commitm="git commit -m"
alias com="git commit -m"
alias commit="git commit"
alias push="git push"
alias pus="git push"
alias pull="git pull"
alias pul="git pull"
alias checkout="git checkout"
alias ched="git checkout develop"
alias chem="git checkout master"
alias che.="git checkout ."
alias che-="git checkout --"
alias che="git checkout"
alias branch="git branch"
alias bra="git branch"
alias merge="git merge"
alias mer="git merge"
alias fetch="git fetch"
alias fet="git fetch"
alias add="git add"
alias clone="git clone"
alias clo="git clone"
alias reset="git reset"
alias res="git reset"
alias flow="git flow"
alias flo="git flow"
alias feature="git flow feature"
alias fea="git flow feature"
alias feas="git flow feature start"
alias feap="git flow feature publish"
# be careful with this. It also deletes the branch...
#alias feaf="git flow feature finish"
alias stash="git stash"

# Git branch bash completion
#if [ -f ~/.git-completion.bash ]; then
#  bash ~/.git-completion.bash

  # Add git completion to aliases
__git_complete che _git_checkout
__git_complete bra _git_branch
__git_complete mer __git_merge
#fi

# vagrant commands
alias vup="vagrant up"
alias vap="vagrant up"
alias vagap="vagrant up"
alias vhalt="vagrant halt"
alias vdestroy="vagrant destroy"
alias vssh="vagrant ssh"
alias vsh="vagrant ssh"
alias vreload="vagrant reload"
alias vstatus="vagrant status"

# networking
alias myip="curl http://ipecho.net/plain; echo"


########
# CONF #
########
MAGENTA=$(tput setaf 5)
LIME_YELLOW=$(tput setaf 190)
YELLOW=$(tput setaf 3)
WHITE=$(tput setaf 7)
CYAN=$(tput setaf 117)
WHITE=$(tput setaf 7)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#    export PS1="________________________________________________________________________________\n${MAGENTA}\u: ${YELLOW}\w ${CYAN} \n\$ \[$RESET\]"
#    export PS1="________________________________________________________________________________\n${MAGENTA}\u: ${YELLOW}\w ${CYAN} on ${LIME_YELLOW} $(parse_git_branch) ${RED}  \n\$ \[$RESET\]"
#    export PS1="________________________________________________________________________________\n${MAGENTA}\u: ${YELLOW}\w ${CYAN} on ${LIME_YELLOW} $( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" ) ${RED}  \n\$ \[$RESET\]"
    export PS1="________________________________________________________________________________\n${MAGENTA}\u: ${YELLOW}\w ${CYAN} on ${LIME_YELLOW} \$(parse_git_branch) ${RED}  \n\$ \[$RESET\]"

#PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

    export PS2="| => "

#   Set Paths
#   ------------------------------------------------------------
    export PATH="$PATH:/usr/local/bin/"
    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
    export EDITOR=/usr/bin/nano

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
    export BLOCKSIZE=1k


###############
# FUNCTIONS
###############
# function Extract for common file formats
extract () {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
    echo "       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"
 else
    for n in $@
    do
      if [ -f "$n" ] ; then
          case "${n%,}" in
            *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                         tar xvf "$n"       ;;
            *.lzma)      unlzma ./"$n"      ;;
            *.bz2)       bunzip2 ./"$n"     ;;
            *.rar)       unrar x -ad ./"$n" ;;
            *.gz)        gunzip ./"$n"      ;;
            *.zip)       unzip ./"$n"       ;;
            *.z)         uncompress ./"$n"  ;;
            *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                         7z x ./"$n"        ;;
            *.xz)        unxz ./"$n"        ;;
            *.exe)       cabextract ./"$n"  ;;
            *)
                         echo "extract: '$n' - unknown archive method"
                         return 1
                         ;;
          esac
      else
          echo "'$n' - file does not exist"
          return 1
      fi
    done
fi
}


###########
# Sources #
###########
# https://natelandau.com/my-mac-osx-bash_profile/
# https://github.com/mathiasbynens/dotfiles
# https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks



#######
# NVM #
#######
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
