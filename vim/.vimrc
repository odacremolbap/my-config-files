" Disable vi-compatibility
set nocompatible 

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/vim/plugins')

" Allow paste on edit mode
Plug 'ConradIrwin/vim-bracketed-paste'

" Closing quotes, parenthesis etc
Plug 'Raimondi/delimitMate'

" Known snippets
Plug 'SirVer/ultisnips'

" Dockerfile syntax
Plug 'ekalinin/Dockerfile.vim', {'for' : 'Dockerfile'}

" Go syntax
Plug 'fatih/vim-go'

" JSON syntax
Plug 'elzr/vim-json', {'for' : 'json'}

" Markdown syntax
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" File tree view
Plug 'scrooloose/nerdtree'

" Monokai color scheme
Plug 'sickill/vim-monokai'

call plug#end()


map <C-n> :NERDTreeToggle<CR>

" Monokai scheme
syntax enable
colorscheme monokai


