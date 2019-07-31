" --------------------------------
" General Vim/NeoVim configuration
" --------------------------------
" Enable plugins and indentation
filetype plugin indent on
" Turn on file syntax
syntax enable
" Auto read file from disk if it was changed somewhere outside editor
set autoread
" Set default dictionary for spellchecker as English
set spelllang=en
" Number of spaces that Tab in the file counts for
set tabstop=3
" Number of spaces used for each stem of (auto)indent
set shiftwidth=3
" Use spaces instead Tab
set expandtab
" Insert blanks according to earlier Tab settings
set smarttab
" Show command line
set showcmd
" Update search pattern matches when typing
set incsearch
" Highlight all matches for search pattern
set hlsearch
" Ignore case in search patterns
set ignorecase
" Override 'ignorecase' option if search pattern contains upper case characters
set smartcase
" Show line and column number
set ruler
" Enable mouse in any mode (text, GUI)
set mouse=a
" Hide mouse pointer when typing
set mousehide
" Copy indent from current line to new line
set autoindent
" Do smart autoindenting when starting new line
set smartindent
" Wrap lines longer than screen width
set wrap
" No compatibility with vi
set nocp
" Use directory related to buffer for file browser
set browsedir=buffer
" Directories where swap file will be placed
set directory=~/tmp,/var/tmp,/tmp
" Default character encoding for new files
set encoding=utf-8
" Always show status line (for airline)
set laststatus=2
" Don't show mode in last line
set noshowmode
" Where to search for tags file (from current directory up)
set tags=./tags;/
" Show line number, go recursive and use regular expressions for :grep command
set grepprg=grep\ -nre
" Amount of millisecs between saves of swap file to disk. Needed for some
" plugins
set updatetime=100
" Highlight line with cursor
set cursorline

" ------------------------------------
" General Vim-Ada bundle configuration
" ------------------------------------
" This lines are required to run whole bundle. They will install (if needed)
" Plug and all required plugins. You can delete them after installing all
" plugins.
"
" Install evetything for Vim
if !has("nvim")
   if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
               \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall vim-ada --sync | PlugInstall --sync | source $MYVIMRC
   endif
   " Set plugins path for Vim
   let s:plug_path = '~/.vim/plugged'
" Install everything for NeoVim
else
   if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
      silent !curl -fLo ~/.local/share/nvim/site/plug.vim --create-dirs
               \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall vim-ada --sync | PlugInstall --sync | source $MYVIMRC
   endif
   " Set plugins path for neovim
   let s:plug_path = '~/.local/share/nvim/plugged'
endif
" End of istallation part of Vim-Ada.

" ****f* .vimrc/UpdatePlug
" FUNCTION
" Update selected plugin with local changes after installation or upgrade
" SOURCE
function! UpdatePlug(info)
   if a:info.status != "unchanged" || a:info.force
     silent exe "!git apply " . glob(s:plug_path . '/vim-ada/patches/' . a:info.name . ".diff")
   endif
endfunction

" Start Plug
call plug#begin(s:plug_path)
" Vim-ada plugin
Plug 'thindil/vim-ada'
" A.vim plugin
Plug 'thindil/a.vim'
" Ada-Bundle plugin
Plug 'thindil/Ada-Bundle'
" Vim-XML plugin
Plug 'thindil/vim-xml'
" Airline plugin
Plug 'vim-airline/vim-airline'
" Anyfold plugin
Plug 'pseewald/vim-anyfold'
" Auto-pairs plugin
Plug 'jiangmiao/auto-pairs'
" Fugitive plugin
Plug 'tpope/vim-fugitive'
" Gitgutter plugin
Plug 'airblade/vim-gitgutter'
" Gutentags plugin
Plug 'ludovicchabant/vim-gutentags'
" indentLine plugin
Plug 'Yggdroot/indentLine'
" MWUTils plugin, needed by Snipmate
Plug 'marcweber/vim-addon-mw-utils'
" Nerdtree plugin
Plug 'scrooloose/nerdtree'
" RainbowParenthesisImproved plugin
Plug 'luochen1990/rainbow'
" Robovim plugin
Plug 'thindil/robovim'
" Snipmate plugin
Plug 'garbas/vim-snipmate'
" Snippets plugin, needed by Snipmate
Plug 'honza/vim-snippets'
" Startify plugin
Plug 'mhinz/vim-startify'
" Tagbar plugin
Plug 'majutsushi/tagbar'
" Tlib plugin, needed by Snipmate
Plug 'tomtom/tlib_vim'
" Zeavim plugin
Plug 'KabbAmine/zeavim.vim'
" Papercolor theme
Plug 'NLKNguyen/papercolor-theme'
" Vim-header theme with local changes
Plug 'alpertuna/vim-header', { 'do': function('UpdatePlug') }
" Syntastic theme with local changes
Plug 'vim-syntastic/syntastic', { 'do': function('UpdatePlug') }
" Gruvbox theme with local changes
Plug 'morhetz/gruvbox', { 'do': function('UpdatePlug') }
" End of Plug configuration
call plug#end()

" Don't go further if plugins are not installed. You can delete this lines
" after installation.
if empty(glob(s:plug_path . '/vim-ada'))
   finish
endif

" --------------------------------------------
" General configurations for installed plugins
" --------------------------------------------
" Disable gitgutter signs
let g:gitgutter_signs = 0
" Use special patched fonts
let g:airline_powerline_fonts = 1
" Show list of buffers
let g:airline#extensions#tabline#enabled = 1
" Set buffer list formatter for airline
let g:airline#extensions#tabline#formatter = "unique_tail"
" Show number of buffer in buffers list
let g:airline#extensions#tabline#buffer_nr_show = 1
" Enable colouring brackets
let g:rainbow_active = 1
" Set syntastic checker
let g:syntastic_ada_compiler = "gnatmake"
" Disable syntastic signs
let g:syntastic_enable_signs = 0
" Disable syntastic error balloons
let g:syntastic_enable_balloons = 0
" Always update errors list
let g:syntastic_always_populate_loc_list = 1
" Use default theme color for showing indent level
let g:indentLine_setColors = 0
" Add syntax support for GNAT project files
let g:ada_with_gnat_project_files = 1
" Add highlighting for GNAT extensions (attributes, pragmas, etc)
let g:ada_gnat_extensions = 1
" Name used in files headers
let g:header_field_author = 'Your name'
" Email address used in files headers
let g:header_field_author_email = 'your@email.org'
" Disable auto adding headers to new or edited files
let g:header_auto_add_header = 0
" Map some file types to search in specific docsets:
" 1. Search in Vim docset if file type is help
" 2. Search in Ada specification docset if file type is ada
let g:zv_file_types = {
   \   'help' : 'vim',
   \   'ada'  : 'ada',
   \ }
" Generate tags files with additional field language. Can boost loading Ada
" tags
let g:gutentags_ctags_extra_args = ['--fields=+l']

" ------------------------------
" GVim specific settings
" ------------------------------
if has("gui_running")
   " Show only menu, hide buttons, etc
   set guioptions=aegimLt
   " Hide menu with F11 key
   nnoremap <F11> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
endif

" --------------------------------
" NeoVim specific settings
" --------------------------------
if has("nvim")
   " By default, use standard clipboard
   set clipboard+=unnamedplus
   " Go to last visited line in file on load file to NeoVim
   :au BufReadPost *
   \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
   \ |   exe "normal! g`\""
   \ | endif
endif

" ---------------------------------
" General setting for color schemes
" ---------------------------------
" Set dark background
set background=dark
" Set color scheme
colorscheme PaperColor

" ---------------------
" Commands abbrevations
" ---------------------
" Abbreviation for open/close NERDTree
cnoreabbrev nt NERDTreeToggle
" Abbreviation for open/close TagBar
cnoreabbrev tb TagbarToggle
" No more unknown command during saving files
cnoreabbrev W w
