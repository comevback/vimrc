set number
set ruler
set cursorline
set cursorcolumn
syntax on
set encoding=utf-8
colorscheme slate

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set title
set showmode
set cmdheight=2
filetype plugin indent on

set hlsearch
set incsearch

set showmatch
set showcmd

set guicursor=n-v-c:block,i-ci-ve:ver5,r-cr:hor20,o:hor50

augroup FixSlateCursorHL
	autocmd!
	autocmd! VimEnter,ColorScheme * call s:fix_cursor_hl()
augroup END

function! s:fix_cursor_hl() abort
	if has ('termguicolors')
		set termguicolors
		highlight CuursorLine gui=NONE guibg =#303030
		highlight CuursorColumn gui=NONE guibg =#303030
	else
		set t_Co=256
		highlight CursorLine cterm=NONE ctermbg=237
		highlight CursorColumn cterm=NONE ctermbg=237
	endif
endfunction

