" Turn off vi compatibility
set nocompatible

" Enable per-directory .vimrc files
set exrc
" Disable unsafe commands in local .vimrc
set secure

""" vim-plug - VIM Plugin Manager
""" https://github.com/junegunn/vim-plug
""" To install plugins :PlugInstall
call plug#begin('~/.vim/plugged')

" pyflakes from vim.org
" apt-get install pyflakes
" Run with <F7>
Plug 'pyflakes'

" YouCompleteMe from github
" Use ctrl+space to trigger suggestions anywhere
Plug 'Valloric/YouCompleteMe'
" YCM-Generator
" https://github.com/rdnetto/YCM-Generator
" To create a file run :YcmGenerateConfig
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

""Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Add plugins to &runtimepath
call plug#end()

""" PowerLine
""" Installed with apt-get install powerline fonts-powerline
""" The vim directory was missing. Got it by temporarely installing the vim
"""   plugin and copying it from there.
set rtp+=/usr/share/powerline/bindings/vim/
set laststatus=2

""" set the runtime path to include Vundle and initialize
""set rtp+=~/.vim/bundle/Vundle.vim
""call vundle#begin()
""" alternatively, pass a path where Vundle should install plugins
"""call vundle#begin('~/some/path/here')
""" :PluginInstall   - installs plugins
""
""" let Vundle manage Vundle, required
""Plugin 'gmarik/Vundle.vim'
""
""" The following are examples of different formats supported.
""" Keep Plugin commands between vundle#begin/end.
""" plugin on GitHub repo
"""Plugin 'tpope/vim-fugitive'
""" YouCompleteMe from github
""Plugin 'Valloric/YouCompleteMe'
""
""" pyflakes from vim.org
""" Run with <F7>
""Plugin 'pyflakes'
""
""" All of your Plugins must be added before the following line
""call vundle#end()            " required

filetype plugin indent on    " required

" Map leader to , (default is \)
let mapleader = ","

" Paste
set pastetoggle=<F2>
" Use system clipboad in vim
"set clipboard=unnamed

""" Syntax highlighting
syntax on
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" Python PEP8 compatible settings
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" Enable folding. Fold with za
set foldmethod=indent
set foldlevel=99

""" Window splits.
" Vertical Split : Ctrl+w + v
" Horizontal Split: Ctrl+w + s
" Close current windows: Ctrl+w + q
" Define Ctrl+<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

""" Search
" Highlight search results
set incsearch
set showmatch
set hlsearch
" Clear the search field to get rid of search result highlights
nnoremap <leader><space> :noh<cr>

"""
" Quick Escape with two quick j
inoremap jj <ESC>

""" YCM Definitions
" GoTo. Use ctrl-O to jump back
nnoremap <leader>jd :YcmCompleter GoTo<CR>
" Display Doc
nnoremap <leader>dd :YcmCompleter GetDoc<CR>
