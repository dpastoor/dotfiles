set nocompatible              " be iMproved, required
syntax on
colorscheme monokai
filetype off                  " required

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

" Always show current position
set ruler

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"allows for sending code to tmux
Bundle 'vim-scripts/Vim-R-plugin'
Bundle 'jalvesaq/R-Vim-runtime'
Bundle 'brauner/vimtux'
Bundle 'epeli/slimux'
" julia"
Plugin 'JuliaLang/julia-vim'
" organization
Plugin 'scrooloose/nerdtree'
"autocompletion
Plugin 'Valloric/YouCompleteMe'
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


" navigating splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" line numbers
set number
" vimtux
"vmap <Leader>t <Plug>SendSelectionToTmux
"nmap <Leader>t <Plug>NormalModeSendToTmux
"nmap <Leader>T <Plug>SetTmuxVars
vmap <leader>m <Plug>SendSelectionToTmux
nmap <leader>m <Plug>NormalModeSendToTmux
nmap <leader>M <Plug>SetTmuxVars
nmap <leader>r <Plug>SendTestToTmux
nmap <leader>R <Plug>SendFocusedTestToTmux

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=


" NERDTree and buffer shorcuts
nmap <F3> :bp<CR>
nmap <F4> :bn<CR>
nmap <F5> :NERDTreeToggle<CR>
 
" PuTTY friendly versions of the above
nmap <C-\> :NERDTreeToggle<CR>
"nmap <C-[> :bp<CR>
"nmap <C-]> :bn<CR>

" Slimux
map <Leader>s :SlimuxREPLSendLine<CR>
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map <Leader>a :SlimuxShellLast<CR>
map <Leader>k :SlimuxSendKeysLast<CR>
