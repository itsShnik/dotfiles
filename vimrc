set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" you complete me
" Plugin 'ycm-core/YouCompleteMe'

" extra color schemes
Plugin 'flazz/vim-colorschemes'

" vimtex plugin
Plugin 'lervag/vimtex'

" Notes on Adding a plugin
" Using vundle: just add the line Plugin '<github-username-of-maker>/<github-repo of plugin>'
" Open any file/vimrc in vim, in normal mode type :PluginInstall and enter
" Removing the plugin, comment out the line and type :PluginUninstall in normal mode

" Add Plugins before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" vimtex
let g:tex_flavor = 'latex'
let g:vimtex_enable = 1
let g:vimtex_view_method = 'zathura'

" Numbers of the lines on the left
set number

" Cursorline highlighted
set cursorline

" Autoindent on
set autoindent

" LINUX tab spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" YCM
" let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf/ycm_extra_conf.py'

" Add some auto commands
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
imap <F5> <Esc>:w<CR>:!clear;python %<CR>

"Some edits from apus vimrc

" set colorscheme and different colorschemes for 
" different type of files
colorscheme gruvbox
set background=dark
autocmd BufEnter *.md colorscheme calmar256-light
autocmd BufEnter *.txt colorscheme calmar256-light

" set cursorl colomn
" set cursorcolumn

"shows last command at bottom
set showcmd

"visual autocomplete for command menu
set wildmenu

"redraw only when we need to
set lazyredraw

"highlight matching brackets
set showmatch

"search as characters are entered
set incsearch

"ignore case while searching
set ignorecase

"enable folding
set foldenable

"open most folds by default
set foldlevelstart=10

"10 nested fold max
set foldnestmax=10

"space opens/closes folds
nnoremap <space> za

"fold based on indent method
set foldmethod=indent

set guifont=Monospace:h20

set encoding=utf-8

" set below = 1 to disable ycm
" let g:loaded_youcompleteme = 1

" use clipboard for pasting
set clipboard=unnamedplus

" map t to gU to make making uppercase letters easy
map t gU

" turn on syntax highlighting
syntax on

" transparent background
hi Normal guibg=NONE ctermbg=NONE
