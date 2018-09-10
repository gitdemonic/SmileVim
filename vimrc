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

"====================================================================
" Set general vim property
" n: Normal mode
" v: Visual mode
" i: Insert mode
" c: Command-line mode
" a: All mode
"====================================================================
syntax on
set clipboard=unnamed
set hls
set cursorline

"=====================================================================
" General VIM configuration
"=====================================================================
" Disable
set mouse-=a
" Undo
nnoremap <silent> <C-z> u
inoremap <silent> <C-z> <Esc>ua<Left>
vnoremap <silent> <C-z> ua<Left>
"Scrapbook, Copy to other termainal
set clipboard=unnamed

"== text movement operation ==
""move cursor to the end
nnoremap <silent> <End><End> <End>a
"nnoremap <silent> e <End>
"inoremap <silent> <C-e> <End>
"move cursor to the home
"nnoremap <silent> <Home><Home> <Home>a<Left>
""nnoremap <silent> h <Home>
"inoremap <silent> <C-h> <Home>
"enable enter in normal mode
"nnoremap <silent> <Enter><Enter> a<Left><CR>
""enable backspace in normal mode
nnoremap <silent> <Backspace> a<Left><Backspace>
"enable space in normal mode
"nnoremap <silent> w<Space> a<Left><Space>
""fast to file end
"nnoremap <silent> bg Gzz
" Keyword search: maps f to first keyword
nnoremap <silent> f *ggnzz
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
"pageDown
nnoremap <silent> b <PageDown>
nnoremap <silent> bb <PageUp>
"== format file operation ==
" toggle line number
set nu
nnoremap <silent> <C-n> :set invnumber<CR>
inoremap <silent> <C-n> <Esc>:set invnumber<CR>
"enable <tab> in normal mode
nnoremap <silent> <Tab> :><CR>
nnoremap <silent> <S-Tab> :<<CR>
inoremap <silent> <S-Tab> <Esc>:<<CR>a<Left>
vnoremap <silent> <Tab> >
vnoremap <silent> <S-Tab> <

" auto
inoremap ( ()<Left>
inoremap [ []<Left>
"inoremap < <><Left>
"inoremap { {<CR>}<Esc>ko
"inoremap <C-w> /*<Space><Space>*/<Left><Left><Left>
"noremap <C-w> i/*<Space><Space>*/<Left><Left><Left>

" indent:
" 	- autoindent: Eveny line will refer to before line
" 	- smartindent: If detect ')' and '}', it won't not auto indent
" 	- cindent: for c and java
set cindent

" load color scheme
set t_Co=256
syntax on
set hlsearch
set timeoutlen=300

" fold method
" :help fold-marker
set foldmethod=marker
set foldmarker={,}
set nofoldenable

"expand tab in source code
"autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.java,*.xml set shiftwidth=4 | set
"expandtab
""autocmd BufRead,BufNewFile *.java,*.xml set shiftwidth=4 | set expandtab
"autocmd BufRead,BufNewFile */kernel/*.c,*/kernel/*.h set shiftwidth=4 | set softtabstop=4 | set noexpandtab
"autocmd BufRead,BufNewFile *.c,*.h,*.cpp set shiftwidth=4 | set softtabstop=4 | set noexpandtab

"for taglist
filetype on
"for taglist
let Tlist_Use_SingleClick = 1

"for NERDTree
let NERDTreeMouseMode = 3

"for srcexpl
let g:SrcExpl_jumpKey = "<ENTER>"

set ls=2
set fileencoding=gb18030
set fileencodings=ucs-bom,gb18030,utf-8,default

" Recommend use it if usually paste function
set paste


"=====================================================================
" VIM Plugin Settings
"=====================================================================
"colorscheme koehler " Color for gvim
colorscheme tokyo-metro " Color for gvim



"=====================================================================
" Not used configuration
"=====================================================================
" < Other hotkey >
"redo
"inoremap <silent> <C-r> <Esc><C-r>a<Left>


" < file navigate operation >
""switch buffer
"nnoremap <silent> <C-Right> :bn<CR>
"inoremap <silent> <C-Right> <Esc>:bn<CR>
"nnoremap <silent> <C-Left> :bp<CR>
"inoremap <silent> <C-Left> <Esc>:bp<CR>


" < file operation >
"save file
"nnoremap <silent> <C-s> :w<CR>
""inoremap <silent> <C-s> <Esc>:w<CR>
"exit file without save
"nnoremap <silent> <C-q> :Bclose!<CR>
"inoremap <silent> <C-q> <Esc>:Bclose!<CR>
""exit vi and discard all change
"nnoremap <silent> <F2> :ExitAll<CR>
"inoremap <silent> <F2> <Esc>:ExitAll<CR>
"reload file anyway
"nnoremap <silent> <F5> :e!<CR>
"inoremap <silent> <F5> <Esc>:e!<CR>

