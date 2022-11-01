set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Python highlighting
Plugin 'vim-python/python-syntax'
" plugin providing linting (syntax checking and semantic errors)
Plugin 'dense-analysis/ale'
"File management
Plugin 'vifm/vifm.vim'                               " Vifm
Plugin 'scrooloose/nerdtree'                         " Nerdtree
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
Plugin 'ryanoasis/vim-devicons'                      " Icons for Nerdtree

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Plugin help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" General
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.
set mouse=nicr                  " Mouse Scrolling
set clipboard=unnamed           " Copy/paste between vim and other programs.

" Plugin stuff
let g:python_highlight_all = 1  " enable python highlighting

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
