set number
set mouse=a
set cursorline
set cursorcolumn
set ignorecase
set incsearch
set ai
set history=100
set shiftwidth=4
set tabstop=4
set cindent
set autowrite


call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/bash-support.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 't9md/vim-choosewin'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ddollar/nerdcommenter'
call plug#end()

set t_Co=256   " This is may or may not needed.
set background=dark
colorscheme PaperColor

"shortcut
nmap  -  <Plug>(choosewin)
map <C-n> :NERDTreeToggle<CR>


"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"choosewin
let g:choosewin_overlay_enable = 1


"ale
let g:ale_sign_error='+'
let g:ale_sign_warning='!'
"let g:ale_disable_lsp=1
"let g:ale_set_highlights = 0
"let g:ale_linters = {
"\	'c':['clang'],
"\	'c++':['clang'],
"\}
let g:airline#extensions#ale#enable=1
let g:ale_sign_column_always=1





"run by<F5> 
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python3 %"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &filetype == 'go'
		exec "!go build %<"
		exec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox %.html &"
	endif
endfunc

