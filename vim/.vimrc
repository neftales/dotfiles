set mouse=a
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'valloric/YouCompleteMe'
Plugin 'mxw/vim-jsx'
" Colorschemes
Plugin 'chriskempson/base16-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

 """"""""""""""""""""""""""""""""""
 " Syntax and indent
 """"""""""""""""""""""""""""""""""
 syntax on " Turn on syntax highligthing
 set showmatch  "Show matching bracets when text indicator is over them

" indentation
" other configs loaded by sensible.vim
 set si " Smart indent

""""""""""""""""""""""""""""""""""
" Some other confy settings
""""""""""""""""""""""""""""""""""
set nu " Number lines
set hls " highlight search
set lbr " linebreak
set ruler " ruler
set relativenumber

" Always show line number, but only in current window.
" set number
:au WinEnter * :setlocal number
:au WinLeave * :setlocal nonumber

" Automatically resize vertical splits.
:au WinEnter * :set winfixheight
:au WinEnter * :wincmd =

" Use spaces during format
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Splits
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remove preview
set completeopt-=preview

""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<CR><CR>

"""""""""""""""""""""""""""""""""
" Show whitespace
"""""""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"""""""""""""""""""""""""""""""""
" Remove whitespace
"""""""""""""""""""""""""""""""""
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre *.js :call TrimWhiteSpace()
