" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()
filetype plugin indent on

" Global settings
set rnu
set colorcolumn=80
set ruler

" Fix backspace
set backspace=indent,eol,start

" EasyMotion
map <Leader> <Plug>(easymotion-prefix)

" NerdTree
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>f :NERDTreeFocus<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Key remaps
imap jj <Esc>`^
let mapleader=" "
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable error sounds and screen flashing in Vim
set visualbell 
set t_vb=

" fix dark blue on ubuntu on Windows
set background=dark

" Colors
syntax on
highlight ColorColumn ctermbg=DarkGrey
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey
set rnu
set nu
highlight NonText ctermfg=DarkGrey
set encoding=utf-8
