if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" General config
set termguicolors
set cscopeverbose
set cscopetag
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set backspace=indent,eol,start
set nobackup
set noundofile
set scrolloff=10
set nonumber
set noswapfile
set path+=** 
set wildmenu 
set nowrap
set autochdir
set formatoptions=cro 
set nrformats+=alpha 

filetype on
filetype plugin indent on

let g:explore_is_open = 0
let g:quickfix_is_open = 0

" Functions
function! ToggleExplore()
    if g:explore_is_open
        let g:explore_is_open = 0
        :Rexplore
    else
        let g:explore_is_open = 1
        :Explore
    endif
endfunction

function! ToggleQuickfix()
    if g:quickfix_is_open
        let g:quickfix_is_open = 0
        :cclose
    else
        let g:quickfix_is_open = 1
        :copen
    endif
endfunction


set cursorline

set syntax=on 
syntax enable

set background=dark
colorscheme happy_hacking

noremap <silent> <leader>v :so $MYVIMRC<CR>
noremap <silent> <leader>l :Buffers<CR>
noremap <silent> <leader>2 :Files<CR>
noremap <silent> <leader>3 :History<CR>
noremap <silent> <leader>s :Rg<CR>
vnoremap <Leader>y :w !wl-copy<CR>
nnoremap <Leader>y :.w !wl-copy<CR>
nnoremap <Leader>Y :%w !wl-copy<CR>

" Auto-indent entire file
noremap <silent> <leader>f gg=G<CR>

" Show/hide explorer window
noremap <silent> <leader>e :call ToggleExplore()<CR>
noremap <silent> <leader>q :call ToggleQuickfix()<CR>
noremap <silent> <leader>, :cp<CR>
noremap <silent> <leader>. :cn<CR>
inoremap jj <Esc>

