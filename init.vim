""" Optixal's Neovim Init.vim
set mouse=a
set nu
set cpoptions+=n
set numberwidth=4
"set cursorcolumn
set cursorline
:set shiftwidth=2
:set autoindent
:set smartindent

""" Vim-Plug
call plug#begin()

" R
Plug 'w0rp/ale'
Plug 'roxma/nvim-completion-manager'
Plug 'jalvesaq/Nvim-R'
Plug 'gaalcaras/ncm-R'
"Plug 'chrisbra/csv.vim'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" Vim 8 only
if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
" Optional: for snippet support
Plug 'sirver/UltiSnips'

" Aesthetics - Main
Plug 'Yggdroot/indentLine'
Plug 'romainl/Apprentice'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'luochen1990/rainbow'
Plug 'nightsense/forgotten'
Plug 'zaki/zazen'

" Aethetics - Additional
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'
Plug 'chrisbra/Colorizer'

Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'vim-pandoc/vim-pandoc'

call plug#end()

""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')


let g:rainbow_active = 1 

""" Coloring
syntax enable
colorscheme apprentice
"colorscheme forgotten-dark

highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

" R version can be specified like this:
let vimrplugin_r_path = "/usr/bin/R"
" Send selection or line to R with space bar, respectively.
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine

let g:airline#extensions#tabline#enabled = 1
let g:indent_guides_enable_on_vim_startup = 1

let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'

" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1
" R commands in R output are highlighted
let g:Rout_more_colors = 1

let b:ale_fixers = ['lintr']


vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
"let R_assign = 2

" Shows function arguments in a separate viewport during omni completion with Ctrl-x Ctrl-o:w
"let R_show_args = 1

" Use Ctrl-Space to do omnicompletion
inoremap <C-Space> <C-x><C-o>

" Remove white background of status line at bottom of nvim viewport (default is 2)
"set laststatus=1

nnoremap <leader>gq :%!pandoc -f html -t markdown <bar> pandoc -f markdown -t html<CR>
vnoremap <leader>gq :!pandoc -f html -t markdown <bar> pandoc -f markdown -t html<CR>
