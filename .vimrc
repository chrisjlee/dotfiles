syntax enable
colorscheme pablo

"Settings
set backup
set backupdir=~/.vim/tmp/
set noswapfile
set nowrap
set number


"Sets how many lines of history VIM has to remember
set history=700

"2 spaces tabs
set tabstop=2 
set softtabstop=2 
set shiftwidth=2 
set noexpandtab

set autoindent
set nocompatible
set showmatch
"Do not redraw between macros (speed)
set lazyredraw
"No beeps
set vb t_vb=
"Highlights search
set hls
"Shows line and column number at the bottom
set ruler
"Incremental search
set incsearch
"Ignore case sensitivity on searches
set ignorecase
"Shows that you are typing as command
set showcmd
"highlight current line
"set cul
if v:version > 700
	set cursorline
	hi CursorLine   gui=reverse	cterm=NONE ctermbg=blue guibg=blue
	hi CursorColumn gui=reverse	cterm=NONE ctermbg=blue guibg=blue

	hi StatusLineModified           term=bold,reverse cterm=bold,reverse ctermfg=DarkRed  gui=bold,reverse guifg=DarkRed
	hi StatusLineModifiedNC         term=reverse      cterm=reverse      ctermfg=DarkRed  gui=reverse      guifg=DarkRed
	hi StatusLinePreview            term=bold,reverse cterm=bold,reverse ctermfg=Blue     gui=bold,reverse guifg=Blue
	hi StatusLinePreviewNC          term=reverse      cterm=reverse      ctermfg=Blue     gui=reverse      guifg=Blue
	hi StatusLineReadonly           term=bold,reverse cterm=bold,reverse ctermfg=Grey     gui=bold,reverse guifg=DarkGrey
	hi StatusLineReadonlyNC         term=reverse      cterm=reverse      ctermfg=Grey     gui=reverse      guifg=DarkGrey
	hi StatusLineSpecial            term=bold,reverse cterm=bold,reverse ctermfg=DarkBlue gui=bold,reverse guifg=DarkBlue
	hi StatusLineSpecialNC          term=reverse      cterm=reverse      ctermfg=DarkBlue gui=reverse      guifg=DarkBlue
	hi StatusLineUnmodifiable       term=bold,reverse cterm=bold,reverse ctermfg=Grey     gui=bold,reverse guifg=Grey
	hi StatusLineUnmodifiableNC     term=reverse      cterm=reverse      ctermfg=Grey     gui=reverse      guifg=Grey

	nnoremap <S-c> :set cursorline! cursorcolumn!<CR>
endif

"Mappings
nnoremap ; :

nmap <S-z> :vsp<cr>
nmap <S-s> :bn<cr>
nmap <S-a> :bp<cr>
nmap <S-w> <C-W>w

nmap <S-x> :tabnew<cr>
nmap <S-e> :tabnext<cr>
nmap <S-q> :tabprev<cr>

nmap <C-z> :u<cr>

nmap <S-Down> 45j<cr>
nmap <S-Up> 45k<cr>

au BufNewFile,BufRead *.mustache set filetype=js
au BufNewFile,BufRead *.less set filetype=less

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

	function! FoldText()
		return substitute(getline(v:foldstart), '{.*', '{...}', '')
	endfunction
	setl foldtext=FoldText()
endfunction

"status line stuff
set ls=2 " Always show status line
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
