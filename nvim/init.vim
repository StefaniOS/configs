call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
" :call PlugInstall to install new plugins
call plug#end()

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:airline_theme='wombat'
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
autocmd FileType netrw setl bufhidden=delete

"NERDTree configs
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Show file for open tab
autocmd BufEnter * lcd %:p:h

nnoremap <silent> <C-Space> :NERDTreeToggle<CR>
" Auto start NERD tree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Let quit work as expected if after entering :q the only window left open is NERD Tree itself
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" =====================================
" Initial settings
" =====================================

" Disable beep / flash
set vb t_vb=

" syntax highlighting
syntax on

" open new split panes to right and below (as you probably expect)
set splitright
set splitbelow

" enable line and column display
set ruler

"disable showmode since using vim-airline; otherwise use 'set showmode'
set noshowmode

" scroll a bit horizontally when at the end of the line
set sidescroll=6

" basics
set tabstop=2
set softtabstop=0
set shiftwidth=2
set nowrap

" Make it easier to work with buffers
" http://vim.wikia.com/wiki/Easier_buffer_switching
set hidden
set confirm
" set autowriteall
set wildmenu wildmode=full

" file type recognition
filetype on
filetype plugin on
filetype indent on
