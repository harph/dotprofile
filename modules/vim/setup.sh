# Vim module
BUNDLE_DIR="modules/vim/vim/bundle"

setup_vim_module() {
    rm -rf "$2"
    git clone "$1" "$2"
    
}

setup_vim_module "git://github.com/kien/ctrlp.vim.git" "$BUNDLE_DIR/ctrlp.vim"
setup_vim_module "git://github.com/mattn/emmet-vim.git" "$BUNDLE_DIR/emmet-vim"
setup_vim_module "git://github.com/roman/golden-ratio.git" "$BUNDLE_DIR/golden-ratio"
setup_vim_module "git://github.com/nvie/vim-flake8.git" "$BUNDLE_DIR/vim-flake8"
setup_vim_module "git://github.com/plasticboy/vim-markdown.git" "$BUNDLE_DIR/vim-markdown"
