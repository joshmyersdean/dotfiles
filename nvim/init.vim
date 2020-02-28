
" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'w0rp/ale'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'dikiaap/minimalist'
call plug#end()

" Line numbers
set number

" NERDTree Shortcuts
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeAutoDeleteBuffer=1
let g:deoplete#enable_at_startup = 1

" Enable alignment
let g:neoformat_basic_format_align = 1
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

" Python linter
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" pylint 
let g:neomake_python_enabled_makers = ['pylint']
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" Web Dev Stuff
autocmd FileType javascript set formatprg=prettier\ --stdin
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

