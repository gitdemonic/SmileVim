set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"====================================================================
" Write your plugins here
"====================================================================

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" 1. plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" 2. This plugin is used for displaying thin vertical lines at each
"    indentation level for code indented with spaces. 
Plugin 'Yggdroot/indentLine'
" 3. This plugin causes all trailing whitespace characters
Plugin 'ntpeters/vim-better-whitespace'
" 4. Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 5. This file contains some boilerplate settings for vim's cscope interface,
"    plus some keyboard mappings that I've found useful.
"Plugin 'chazy/cscope_maps'
" 6. The "Tag List" plugin is a source code browser for the Vim editor.
Plugin 'vim-scripts/taglist.vim'
" 7. The NERDTree is a file system explorer for the Vim editor. Using this
"    plugin, users can visually browse complex directory hierarchies, quickly
"    open files for reading or editing, and perform basic file system operations.
Plugin 'scrooloose/nerdtree'
" 8. SrcExpl (Source Explorer) is a source code explorer that provides context
"    for the currently selected keyword by displaying the function or type
"    definition or declaration in a separate window
Plugin 'wesleyche/SrcExpl'
" 9. The Trinity plugin manages Source Explorer, Taglist and NERD Tree, and
"    build them as a great IDE.
Plugin 'wesleyche/Trinity'
" 10. Tagbar is a Vim plugin that provides an easy way to browse the tags of
"     the current file and get an overview of its structure
Plugin 'majutsushi/tagbar'
" Skip it first
"Bundle 'Valloric/YouCompleteMe'
" 11. A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plugin 'airblade/vim-gitgutter'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"====================================================================
"" Run vundle
"====================================================================

" All of your Plugins must be added before the following line
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

"=====================================================================
" General VIM configuration
"=====================================================================
set nu!

