" basic vim settings
set number
set mouse=a

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'pearofducks/ansible-vim'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/badwolf'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required

set colorcolumn=100
set laststatus=2
" 500 ms updates for plugins
set updatetime=500

" Large file consideration
let g:gitgutter_max_signs=10000

" colorscheme
colorscheme badwolf

