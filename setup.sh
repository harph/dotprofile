#!/bin/sh
BASEDIR=$(dirname $0)
MODULEDIR="$BASEDIR/modules"
HOMEDIR=$(eval echo ~${SUDO_USER})

echo $BASEDIR
echo $MODULEDIR
echo $HOMEDIR


vim_setup() {
    ln -s "$MODULEDIR/vim/.vimrc" $HOMEDIR
    ln -s "$MODULEDIR/vim/.vim" $HOMEDIR
    echo "vim setup [DONE]"
}

tmux_setup() {
    ln -s "$MODULEDIR/tmux/.tmux.conf" $HOMEDIR
    echo "tmux setup [DONE]"
}

vim_setup
tmux_setup
