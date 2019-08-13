"==== Overview ================================================================
" 1. Vundle_Plugins_ColorScheme
" 2. General_Config
"		2.1		Default
"		2.2		Keybind
"		2.3		Autocmd
" 3. Plugin_Config
"		3.0		colorscheme +++
"		3.1		tpope/vim-fugitive
"		3.2		Yggdroot/indentLine
"		3.3		ntpeters/vim-better-whitespace
"		3.4		vim-airline/vim-airline +++
"		3.5		vim-airline/vim-airline-themes
"		3.6		vim-scripts/taglist.vim
"		3.7		scrooloose/nerdtree
"		3.8		wesleyche/SrcExpl
"		3.9		wesleyche/Trinity +++
"		3.10	majutsushi/tagbar
"		3.11	airblade/vim-gitgutter +++
"		3.12	junegunn/fzf +++
"		3.13	junegunn/fzf.vim +++
"		3.14	(Unused)mileszs/ack.vim
"		3.15	bogado/file-line
"		3.16	jreybert/vimagit
"		3.17	iberianpig/tig-explorer.vim +++
"		3.18	(Unused) vim-syntastic/syntastic
"		3.19	Valloric/YouCompleteMe +++
"		3.20	SirVer/ultisnips
"		3.21	honza/vim-snippets
"		3.22	haya14busa/incsearch.vim
"		3.23	itchyny/vim-cursorword
"		3.24	henrik/vim-indexed-search
"		3.25	terryma/vim-multiple-cursors
"		3.26	t9md/vim-quickhl
"		3.30	(Color) sts10/vim-pink-moon
"		3.31	(Color) koirand/tokyo-metro.vim
"		3.32	(Color) srcery-colors/srcery-vim
" 4. Function
"		4.1		Mouse_toggle()
"		4.2		Qucikfile_toggle()
" 5. Bug_workaround
" 6. Appendix
"==== END Overview ============================================================

"==== 1. Vundle_Plugins_ColorScheme ===========================================
set nocompatible              " be iMproved, required
filetype off                  " required

" * set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" * alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" * let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"---- 1.1. Plugins ------------------------------------------------------------
" * Write your plugins here
" * The following are examples of different formats supported.
" * Keep Plugin commands between vundle#begin/end.
" * 1. plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" * 2. This plugin is used for displaying thin vertical lines at each
"      indentation level for code indented with spaces.
"Plugin 'Yggdroot/indentLine'
" * 3. This plugin causes all trailing whitespace characters
Plugin 'ntpeters/vim-better-whitespace'
" * 4. Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" * 5. This file contains some boilerplate settings for vim's cscope interface,
"      plus some keyboard mappings that I've found useful.
"Plugin 'chazy/cscope_maps'
" * 6. The "Tag List" plugin is a source code browser for the Vim editor.
Plugin 'vim-scripts/taglist.vim'
" * 7. The NERDTree is a file system explorer for the Vim editor. Using this
"      plugin, users can visually browse complex directory hierarchies, quickly
"      open files for reading or editing, and perform basic file system operations.
Plugin 'scrooloose/nerdtree'
" * 8. SrcExpl (Source Explorer) is a source code explorer that provides context
"      for the currently selected keyword by displaying the function or type
"      definition or declaration in a separate window
Plugin 'wesleyche/SrcExpl'
" * 9. The Trinity plugin manages Source Explorer, Taglist and NERD Tree, and
"      build them as a great IDE.
Plugin 'wesleyche/Trinity'
" * 10. Tagbar is a Vim plugin that provides an easy way to browse the tags of
"       the current file and get an overview of its structure
Plugin 'majutsushi/tagbar'
" * 11. A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plugin 'airblade/vim-gitgutter'
" * 12. Open file and go to line via ':' symbol, e.g. file.txt:123
"Bundle 'bogado/file-line'
" * 13. fzf on vim
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" * 14. ack on vim
"Plugin 'mileszs/ack.vim'
" * 15. file-line
Plugin 'bogado/file-line'

" * 16. vimagit
"Plugin 'jreybert/vimagit'

" * 17. tig
Plugin 'iberianpig/tig-explorer.vim'

" * 18. Syntastic
"Plugin 'vim-syntastic/syntastic'

" * 19. Youcompeleteme
"Plugin 'Valloric/YouCompleteMe'

" * 20. Track the engine.
Plugin 'SirVer/ultisnips'

" * 21. Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" * 22. incsearch
Plugin 'haya14busa/incsearch.vim'

" * 23. itchyny/vim-cursorword
Plugin 'itchyny/vim-cursorword'

" * 24 henrik/vim-indexed-search
Plugin 'henrik/vim-indexed-search'

" * 25 terryma/vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" * 26 Quick hightlight for multi-color
Plugin 't9md/vim-quickhl'

" * 27 2019 Autocompleter
Plugin 'zxqfl/tabnine-vim'

" * 28 nerdcommenter
Plugin 'scrooloose/nerdcommenter'

" * 29 easymotion/vim-easymotion
Plugin 'easymotion/vim-easymotion'

"---- 1.2 Vim Color -----------------------------------------------------------
" How to use color scheme?
" * 1. Install color scheme via vundle, like it:
Plugin 'sts10/vim-pink-moon'
Plugin 'koirand/tokyo-metro.vim'
Plugin 'srcery-colors/srcery-vim'
" * 2. Add colorscheme after Run vundle, like it:
" colorscheme pink-moon


" * plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" * Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" * git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" * The sparkup vim script is in a subdirectory of this repo called vim.
" * Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" * Install L9 and avoid a Naming conflict if you've already installed a
" * different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

"---- 1.3  Run vundle ---------------------------------------------------------
" * All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" * To ignore plugin indent changes, instead use:
"filetype plugin on
"
" * Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" * see :h vundle for more details or wiki for FAQ
" * Put your non-Plugin stuff after this line

"==== END: Vundle config ======================================================

"==== 2. General_Config =======================================================
" * Set general vim property
" n: Normal mode
" v: Visual mode
" i: Insert mode
" c: Command-line mode
" a: All mode
"---- 2.1 Default -------------------------------------------------------------
syntax on
" Set it to unnamed to use * (PRIMARY, on select)
" Set it to unnamedplus to use + (CLIPBOARD, ^C)
set clipboard=unnamedplus
set hls                 " hightlight search
set incsearch           " search realtime
set cursorline
set nu                  " Lile number
" * Indent:
" 	- autoindent: Eveny line will refer to before line
" 	- smartindent: If detect ')' and '}', it won't not auto indent
" 	- cindent: for c and java
set cindent
" * Tabs
set ts=4
set tabstop=4
" * Tab settings: It use 4 space replace tab
"set shiftwidth=4
"set expandtab

" * Load color scheme
set t_Co=256
set timeoutlen=200
" * fold method :help fold-marker ---------------------------------------------
set foldmethod=marker
set foldmarker={,}
set nofoldenable
set ls=2
set fileencoding=gb18030
set fileencodings=ucs-bom,gb18030,utf-8,default
" * Recommend use it if usually paste function --------------------------------
set paste
set modifiable
" * Mouse mode: default set disable -------------------------------------------
set mouse-=a
" * Set background color at colum 80 ------------------------------------------
set colorcolumn=80
" * Show tabs -----------------------------------------------------------------
set listchars=tab:\|.
" * Show symbol ---------------------------------------------------------------
set list
set cursorline! cursorcolumn!

" ---- 2.2 Keybind ------------------------------------------------------------
" * Mouse mode: Toggle hotkey -------------------------------------------------
nnoremap <silent> <C-x> :call ToggleMouse() <CR>
vnoremap <silent> <RightMouse> y
" * Text movement operation ---------------------------------------------------
" * Move cursor to the end ----------------------------------------------------
nnoremap <silent> <End><End> <End>a
nnoremap <silent> e <End>
inoremap <silent> <C-e> <End>
" * Move cursor to the home ---------------------------------------------------
"nnoremap <silent> <Home><Home> <Home>a<Left>
"nnoremap <silent> h <Home>
"inoremap <silent> <C-h> <Home>
" * Enable enter in normal mode -----------------------------------------------
"nnoremap <silent> <Enter><Enter> a<Left><CR>
" * Enable backspace in normal mode -------------------------------------------
nnoremap <silent> <Backspace> a<Left><Backspace>
" * Keyword search: maps f to first keyword -----------------------------------
nnoremap <silent> f *ggnzz
nnoremap <silent> ] :cnext<CR>
nnoremap <silent> [ :cNext<CR>
" * PageDown ------------------------------------------------------------------
"nnoremap <silent> B <PageUp>
"nnoremap <silent> b <PageDown>
" * Enable <tab> in normal mode -----------------------------------------------
nnoremap <silent> <Tab> :><CR>
nnoremap <silent> <S-Tab> :<<CR>
inoremap <silent> <S-Tab> <Esc>:<<CR>a<Left>
vnoremap <silent> <Tab> >
vnoremap <silent> <S-Tab> <
" * Autocompletion for symbols ------------------------------------------------
"inoremap ( ()<Left>
"inoremap [ []<Left>
"inoremap < <><Left>
"inoremap { {<CR>}<Esc>ko
" * Redo
nnoremap <silent> <C-r> <Esc><C-r>a<Left>
" * Exit window ---------------------------------------------------------------
nnoremap <silent> <C-z> :q<CR>

" * Description: Find keyword via vimgrep -------------------------------------
"   This mapping uses <cword> to get the word under the cursor, and
"   isearches for it in the current directory and all subdirectories, opening
"   the quickfix window when done
"map <F3> :execute "vimgrep /" . expand("<cword>") . "/j %" <Bar> cw<CR>

map <F3> :vimgrep /\c/ %
map <F4> :vimgrepadd /\c/ %
nnoremap <silent> <C-f> :execute "vimgrep /" . expand("<cword>") . "/j %" <Bar> cw<CR>

" Git hotkey
map <F1> :! git status <cr>
"map <F2> :! git diff % <cr>
map <F2> :! tig % <cr>

" * Qickfix toggle ------------------------------------------------------------
" Quick: hotkey
nmap <silent> <C-c> :QFix<CR>

" * Cscope Settings -----------------------------------------------------------
"if has("cscope")
"    set csto=0
"    set cst
"    set nocsverb
" add any database in current directory
"    if filereadable("cscope.out")
"       cs add cscope.out
"    else add database pointed to by environment
"    elseif $CSCOPE_DB != ""
"    cs add $CSCOPE_DB
"    endif
"    set csverb
"endif

nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>


" ---- 2.3 Autocmd ------------------------------------------------------------
" * Expand tab in source code -------------------------------------------------
autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.java,*.xml set shiftwidth=4 | set expandtab
"autocmd BufRead,BufNewFile *.java,*.xml set shiftwidth=4 | set expandtab
autocmd BufRead,BufNewFile */kernel/*.c,*/kernel/*.h set shiftwidth=4 | set softtabstop=4 | set noexpandtab
"autocmd BufRead,BufNewFile *.c,*.h,*.cpp set shiftwidth=4 | set softtabstop=4 | set noexpandtab
"autocmd BufRead,BufNewFile *.dts,*.dtsi set filetype=dts

" visual indent shift
vnoremap < <gv
vnoremap > >gv


"==== 3. Plugin_Config ========================================================
"---- 3.0 colorscheme ---------------------------------------------------------
" Scheme: Set color scheme
colorscheme koehler " Color for gvim
"colorscheme pink-moon
"colorscheme tokyo-metro
"let g:srcery_italic = 1
"let g:srcery_bold = 1
"let g:srcery_italic = 0
"let g:srcery_transparent_background = 0
"let g:srcery_underline = 1
"let g:srcery_undercurl = 1
"let g:srcery_inverse = 1
"let g:srcery_inverse_match_paren = 0
"let g:srcery_dim_lisp_paren = 0 
"colorscheme srcery
" Scheme: Set airline scheme
let g:lightline = { 'colorscheme': 'pink-moon' }
"let g:lightline = { 'colorscheme': 'srcery' }
"let g:lightline = { 'colorscheme': 'tokyo-metro' }
" Scheme: Other config
"set cursorline              " Hight background at current cursor line
hi CursorLine   cterm=NONE ctermbg=237 ctermfg=NONE guibg=darkred guifg=white
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=235 ctermfg=NONE guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"---- 3.4 Airline settings ----------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"
let g:airline_theme='molokai'
"let g:airline_theme='srcery'
"let g:airline_theme='iceberg'
"let g:airline_theme='distinguished'
"let g:airline_theme='badwolf'
"let g:airline_theme='sol'
"let g:airline_theme='stellarized_dark'

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
endif
set fileencoding=gb18030
set fileencodings=ucs-bom,gb18030,utf-8,default
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2

"---- 3.9 Trinity Settings ----------------------------------------------------
let mapleader = ","
" * Taglist
filetype on
let Tlist_Use_SingleClick = 1
" * NERDTree
let NERDTreeMouseMode = 3
" * Srcexpl
let g:SrcExpl_jumpKey = "<ENTER>"

" * Open and close all the three plugins on the same time
nmap <F8>  :TrinityToggleAll<CR>

" * Open and close the Source Explorer separately
nnoremap <leader>m :TrinityToggleSourceExplorer<CR>

" * Open and close the Taglist separately
nmap <F9> :TrinityToggleTagList<CR>

" * Open and close the NERD Tree separately
nmap <F11> :TrinityToggleNERDTree<CR>

"---- 3.10 Tagbar Settings -----------------------------------------------------
" * Open and close the tagbar separately
nmap <F12> :TagbarToggle<CR>

"---- 3.11 gitgutter ----------------------------------------------------------
let mapleader = '\'
let g:gitgutter_enable = 1
nmap <leader>] <plug>GitGutterNextHunk
nmap <leader>[ <plug>GitGutterPrevHunk

"---- 3.12 fzf/fzf.vim ---------------------------------------------------------
" * Enable per-command history.
" * CTRL-N and CTRL-P will be automatically bound to next-history and
" * previous-history instead of down and up. If you don't like the change,
" * explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
let g:fzf_history_dir = '~/.local/share/fzf-history'

command! -bang Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 60%,0'}, <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%', '?'),
  \                 <bang>0)

"command! -bang -nargs=* Ag
"  \ call fzf#vim#ag(<q-args>,
"  \                 fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:50%'),
"  \                 <bang>0)

" * [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" * [[B]Commits] Customize the options used by 'git log':
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h %ce %s %d %C(black)%C(bold)%cr"'

" * [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" * [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" * Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" * Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" * Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

let mapleader = "."
nnoremap <leader>b :Buffer<CR>
nnoremap <leader>c :Command<CR>
nnoremap <leader>l :execute "Line " . expand("<cword>") <Bar> cw<CR>
nnoremap <leader>h :Hist:

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

"---- 3.16 tig-explorer -------------------------------------------------------
let mapleader = ","
" * open tig with current file
nnoremap <Leader>T :TigOpenCurrentFile<CR>

" * open tig with Project root path
nnoremap <Leader>t :TigOpenProjectRootDir<CR>

" * open tig grep
nnoremap <Leader>g :TigGrep<CR>

" * resume from last grep
nnoremap <Leader>r :TigGrepResume<CR>

" * open tig grep with the selected word
vnoremap <Leader>g y:TigGrep<Space><C-R>"<CR>

" * open tig grep with the word under the cursor
nnoremap <Leader>cg :<C-u>:TigGrep<Space><C-R><C-W><CR>

" * open tig blame with current file
nnoremap <Leader>b :TigBlame<CR>

"---- 3.19 YouCompleteMe ------------------------------------------------------
"---- 3.27 tabnine Settings ---------------------------------------------------
"let g:ycm_use_clangd = "Always"
"let g:ycm_clangd_binary_path = "/home/henry/ycm_temp/llvm_root_dir"
let g:syntastic_java_checkers = []

let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]

"---- 3.20 ----------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" UltiSnips triggering
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"---- 3.22 incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"set hlsearch
let g:incsearch#no_inc_hlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

let g:incsearch#highlight = {
		\   'match' : {
		\     'group' : 'IncSearchUnderline',
		\     'priority' : '10'
		\   },
		\   'on_cursor' : {
		\     'priority' : '100'
		\   },
		\   'cursor' : {
		\     'group' : 'ErrorMsg',
		\     'priority' : '1000'
		\   }
		\ }

"--- 25 terryma/vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
"
"--- 26 t9md/vim-quickhl
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)

nmap <Space>w <Plug>(quickhl-manual-this-whole-word)
xmap <Space>w <Plug>(quickhl-manual-this-whole-word)

nmap <Space>c <Plug>(quickhl-manual-clear)
vmap <Space>c <Plug>(quickhl-manual-clear)

nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

nmap <Space>j <Plug>(quickhl-cword-toggle)
nmap <Space>] <Plug>(quickhl-tag-toggle)

"" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" * 28 nerdcommenter
map c <Nop>
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" * 29 vim easymotion --------------------------------------------------------
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"==== 4. Function =============================================================
"---- 4.1 Mouse toggle --------------------------------------------------------
function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        " disable mouse
        set mouse=
    else
        " enable mouse everywhere
        set mouse=a
    endif
endfunc

" <TBD>
"nmap <silent> <C-c> \` :QFix<CR>
"nnoremap <silent> <C-o> :copen <CR>
"nnoremap <silent> <C-c> :cclose <CR>

"---- 4.2 QuickFix toggle -----------------------------------------------------
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction
"==== END 4. Function =========================================================

"==== 5. Bug workaround =======================================================
" workaround for https://github.com/vim/vim/issues/1start671
if has("unix")
  let s:uname = system("echo -n \"$(uname)\"")
  if !v:shell_error && s:uname == "Linux"
    set t_BE=
  endif
endif
"==== END 5. Bug workaround ===================================================

"==== 6. Appendix =============================================================
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" Not used configuration
"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
" IndentLinesToggle Setting
" Toggle cope mode
"nnoremap <silent> <C-p> :IndentLinesToggle<CR>
"nnoremap <silent> <C-x> :call ToggleCopyMode() <CR>
"function! ToogleCopyMode()
"    :IndentLinesToggle
"endfunc

"---- 3.10 Syntastic ----------------------------------------------------------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"execute pathogen#infect()
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"每次自动调用 :SyntasticSetLocList, 将错误覆盖 **quickfix**
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"map <F2> :SyntasticToggleMode<CR>
"---- END ---------------------------------------------------------------------

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
"inoremap <silent> <C-q> <Esc>:Bclose!<CR>
""exit vi and discard all change
"nnoremap <silent> <F2> :ExitAll<CR>
"inoremap <silent> <F2> <Esc>:ExitAll<CR>
"reload file anyway
"nnoremap <silent> <F5> :e!<CR>
"inoremap <silent> <F5> <Esc>:e!<CR>

" Magit config test:
autocmd User VimagitUpdateFile
    \ if ( exists("*gitgutter#process_buffer") ) |
    \   call gitgutter#process_buffer(bufnr(g:magit_last_updated_buffer), 0) |
    \ endif
