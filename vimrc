set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing

" Now we set some defaults for the editor
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" modelines have historically been a source of security/resource
" vulnerabilities -- disable by default, even when 'nocompatible' is set
set nomodeline

syntax on
set number
set background=dark
colorscheme OceanicNext

"resume at last position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete

set expandtab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap

" stop using arrow keys!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

packadd! vim-javascript
packadd! vim-jsx-pretty
"packadd! vim-css

let g:ale_linters = {
            \   '*': ['remove_trailing_lines', 'trim_whitespace'],
            \   'javascript': ['eslint'],
            \}
let g:ale_fixers = {
            \   'javascript': ['eslint'],
            \}
let g:ale_set_highlights = 0
let g:airline#extensions#ale#enabled = 1
