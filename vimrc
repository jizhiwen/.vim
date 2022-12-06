unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
call plug#end()

set number
set relativenumber
set hlsearch

" Basic pari
inoremap {		{}<Left>
inoremap <expr> }	strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR>		{<CR>}<Esc>O

inoremap (		()<Left>
inoremap <expr> )	strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap <		<><Left>
inoremap <expr> >	strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"
inoremap <<		<<

inoremap [		[]<Left>
inoremap <expr> ]	strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"

inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
