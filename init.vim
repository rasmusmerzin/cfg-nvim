call plug#begin()

Plug 'rasmusmerzin/vim-plain'
Plug 'rasmusmerzin/vim-eznav'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'

Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

call plug#end()

let g:markdown_folding = 1

" ale
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_set_highlights = 0

let g:ale_rust_rustfmt_options = '--config edition=2018'

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'javascript': ['prettier'],
  \ 'typescript': ['prettier'],
  \ 'javascriptreact': ['prettier'],
  \ 'typescriptreact': ['prettier'],
  \ 'css': ['prettier'],
  \ 'scss': ['prettier'],
  \ 'html': ['prettier'],
  \ 'markdown': ['prettier'],
  \ 'json': ['prettier'],
  \ 'vue': ['eslint'],
  \ 'go': ['gofmt'],
  \ 'rust': ['rustfmt']
  \ }

nnoremap gd :ALEGoToDefinition<CR>
nnoremap gD :ALEGoToDefinition -tab<CR>

" fugitive
nnoremap <A-c> :G!<CR>
nnoremap <A-C> :G<CR>

" gv
nnoremap <A-g> :GV<CR>
nnoremap <A-G> :GV!<CR>

" fzf
nnoremap <A-f> :GFiles<CR>
nnoremap <A-F> :Files<CR>
nnoremap <A-/> y:Rg<Space>
vnoremap <A-/> y:Rg <C-r>"<CR>
