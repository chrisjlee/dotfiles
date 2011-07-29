syntax enable
colorscheme pablo

"Settings
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set nowrap
set number
set virtualedit=all
set autoindent
set nocompatible
set showmatch
set lazyredraw
set vb t_vb=
set hls
set ruler
set incsearch
" Tab Settings
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

"Shows that you are typing as command
set showcmd
"Mouse in console
set mouse=a
"highlight current line
set cul

"Mappings
nnoremap ; :

nmap <S-a> :bn<cr>
nmap <S-s> :bp<cr>
nmap <S-w> <C-W>w

nmap <C-z> :u<cr>

nmap <S-Down> 45j<cr>
nmap <S-Up> 45k<cr>
