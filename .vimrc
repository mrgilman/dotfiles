set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'djjcast/mirodark'                 " colorscheme
Plugin 'elixir-lang/vim-elixir'           " Elixir syntax
Plugin 'kchmck/vim-coffee-script'         " :coffee:
Plugin 'mustache/vim-mustache-handlebars' " handlebars syntax highlighting
Plugin 'mxw/vim-jsx'                      " React, bro
Plugin 'pangloss/vim-javascript'          " js syntax highlighting?
Plugin 'rking/ag.vim'                     " search
Plugin 'scrooloose/syntastic'             " syntax checking
Plugin 'slim-template/vim-slim'           " Slim :|
Plugin 'tpope/vim-abolish'                " find and replace and keep case
Plugin 'tpope/vim-fugitive'               " run git commands
Plugin 'tpope/vim-rails'                  " rails shortcuts
Plugin 'tpope/vim-repeat'                 " repeat a plugin thing
Plugin 'tpope/vim-surround'               " surround
Plugin 'Valloric/YouCompleteMe'           " autocomplete
Plugin 'vim-airline/vim-airline'          " status bar
Plugin 'vim-airline/vim-airline-themes'   " nice colors for status bar
Plugin 'vim-ruby/vim-ruby'                " ruby syntax highlighting is out of date!
Plugin 'vim-scripts/tComment'             " shortcuts for commenting and uncommenting
Plugin 'VundleVim/Vundle.vim'             " package management

call vundle#end()            " required
filetype plugin indent on    " required

" turn on syntax highlighting and use colorscheme
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  let g:mirodark_disable_color_approximation=1
  colorscheme mirodark
endif

set laststatus=2  " Always display the status line
set backspace=2   " backspace does normal backspace things
set noswapfile    " swapfiles are annoying

let g:airline_theme='kolor' " Set airline theme

" line numbers
set number
set numberwidth=5

" line at 80 chars
set textwidth=80
set colorcolumn=+1

" shortcuts for moving between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set tabstop=2                             " tabs are two columns
set shiftwidth=2                          " reindent is two columns
set expandtab                             " tabs are actually spaces
set list listchars=tab:»·,trail:·,nbsp:·  " display trailing whitespace

" shortcut for searching
nmap g/ :Ag!<space>

" syntax highlighting for handlebars
let g:syntastic_filetype_map = { 'html.handlebars': 'hbs' }

" open new splits below and to right
set splitbelow
set splitright

" recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
