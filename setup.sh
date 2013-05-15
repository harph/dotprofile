#!/bin/bash

# Path and directories
BASEDIR=$(dirname $0)
MODULEDIR="$BASEDIR/modules"
HOMEDIR=$(eval echo ~${SUDO_USER})

# Output colors
OK="\e[0;32m"  # green
ERROR="\e[0;31m"  # red
WARNING="\e[1;33m"  # yellow
INFO="\e[1;96m"  # blue
NOCOLOR="\e[0m"  # no color

echo $BASEDIR
echo $MODULEDIR
echo $HOMEDIR


vim_setup() {
    vimrc="$HOME/.vimrc"
    vimfolder="$HOMEDIR/.vim"
    if [ ! -e "$vimrc" ]
    then
        { ln -s "$MODULEDIR/vim/vimrc" $vimrc &&
            echo -en ".vimrc link $OK [OK]"; } || 
            echo -en ".vimrc link $ERROR [FAILED]"
    else
        echo -en "$WARNING There is an existing .vimrc. The link was not been created."
    fi
    echo -e $NOCOLOR

    if [ ! -e "$vimfolder" ]
    then
        { ln -s "$MODULEDIR/vim/vim" $vimfolder &&
            echo -en ".vim link $OK [OK]"; } || 
            echo -en ".vim link $ERROR [FAILED]"
    else
         echo -en "$WARNING There is an existing .vim. The link was not been created."
    fi
    echo -e $NOCOLOR
    echo -e "$INFO vim setup [DONE] $NOCOLOR"
}


tmux_setup() {
    tmuxconf="$HOME/.tmux.conf"
    if [ ! -e "$tmuxconf" ]
    then
        { ln -s "$MODULEDIR/tmux/tmux.conf" $tmuxconf &&
            echo -en ".tmux.conf link $OK [OK]"; } || 
            echo -en ".tmux.conf link $ERROR [FAILED]"
    else
        echo -en "$WARNING There is an existing .tmux.conf. The link was not been created."
    fi
    echo -e $NOCOLOR
    echo -e "$INFO tmux setup [DONE] $NOCOLOR"
}


vim_setup
tmux_setup
