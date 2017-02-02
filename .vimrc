" Turn off vi compatibility
set nocompatible

" Enable per-directory .vimrc files
set exrc
" Disable unsafe commands in local .vimrc
set secure

""" vim-plug - VIM Plugin Manager
""" cd .vim
""" git clone https://github.com/junegunn/vim-plug
""" mkdir autoload; cd autoload; ln -s ../vim-plug/plug.vim .
""" To install plugins :PlugInstall
call plug#begin('~/.vim/plugged')

" pyflakes from vim.org
" apt-get install pyflakes
" Run with <F7>
Plug 'pyflakes'

" YouCompleteMe from github
" Use ctrl+space to trigger suggestions anywhere
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --tern-completer' }
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
""" Keep Plugin commands between vundle#begin/end.
""" To install run :BundleInstall
""
""" let Vundle manage Vundle, required
""Plugin 'gmarik/Vundle.vim'
""
""" YouCompleteMe from github
"""  Update:
"""   cd .vim/bundle/YouCompleteMe
"""   git pull
"""   git submodule update --init --recursive
"""   ./install.py --clang-completer --tern-completer
""Plugin 'Valloric/YouCompleteMe'
""
""" Syntastic from github
""" Install apt-get install python3-flake8
""" Use the :Errors command to open a quickfix window
""Plugin 'scrooloose/syntastic'
""
""" All of your Vundle Plugins must be added before the following line
""call vundle#end()            " required
""filetype plugin indent on    " required

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Map leader to , (default is \)
let mapleader = ","

" Paste
set pastetoggle=<leader>p
" Use system clipboad in vim
"set clipboard=unnamed

""" Syntax highlighting
syntax on
filetype on                  " try to detect filetypes
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

"""""
""" Syntastic
""" Use python 3
""let g:syntastic_python_python_exec = '/usr/bin/python3'
""let g:syntastic_python_checkers = ['flake8']
""" Check when opening
"""let g:syntastic_check_on_open = 1
""" Run check command (doesn't seem to work)
""nnoremap <leader>sc :SyntasticCheck<cr>

" Recomended YCM Django settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
