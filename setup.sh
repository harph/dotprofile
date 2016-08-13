#!/bin/bash

# Path and directories
BASEDIR=$PWD
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
    if [[ ! -e "$vimrc" ]]
    then
        { ln -s "$MODULEDIR/vim/vimrc" $vimrc &&
            echo -e ".vimrc link $OK [OK] $NOCOLOR"; } ||
        { echo -e ".vimrc link $ERROR [FAILED] $NOCOLOR" && return 0; }
    else
        echo -e "$WARNING There is an existing .vimrc. The link was not been created. $NOCOLOR"
    fi

    if [[ ! -e "$vimfolder" ]]
    then
        { /bin/bash $MODULEDIR/vim/setup.sh && ln -s "$MODULEDIR/vim/vim" $vimfolder &&
            echo -e ".vim link $OK [OK] $NOCOLOR"; } ||
        { echo -e ".vim link $ERROR [FAILED] $NOCOLOR";  return 0; }
    else
        echo -e "$WARNING There is an existing .vim. The link was not been created. $NOCOLOR"
    fi
    echo -e "$INFO vim setup [DONE] $NOCOLOR"
}


tmux_setup() {
    tmuxconf="$HOME/.tmux.conf"
    if [[ ! -e "$tmuxconf" ]]
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


bash_profile_setup() {
    bash_profile_conf="$HOME/.bash_profile"
    if [[ ! -e "$bash_profile_conf" ]]
    then
        { ln -s "$MODULEDIR/bash/bash_profile" $bash_profile_conf &&
            echo -en ".bash_profile link $OK [OK]"; } || 
            echo -en ".bash_profile link $ERROR [FAILED]"
    else
        echo -en "$WARNING There is an existing .bash.profile. The link was not been created."
    fi
    echo -e $NOCOLOR
    echo -e "$INFO bash_profile setup [DONE] $NOCOLOR"

}

vim_setup
tmux_setup
bash_profile_setup
