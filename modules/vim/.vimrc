" Look and Feel
syntax on
set number
set background=dark
colorscheme harph
set colorcolumn=80
set cursorline
set list
set ruler

" Spacing and Indentation
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent

" Find/Search 
set hlsearch
set incsearch
set showmatch


" Errors Handling
set visualbell
set noerrorbells

" Editor
set wildignore=*.swp,*.bak,*.pyc,*/.git/*
set wildignore+=*/tmp/*,*.so,*.zip


if !exists("*TrimWhiteSpace")
    " Removes trailing spaces
    function TrimWhiteSpace()
      %s/\s*$//
      ''
    :endfunction
endif

map <F2> :call TrimWhiteSpace()<CR>
map <F1> :tabnew<CR>
