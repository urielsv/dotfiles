"NVim - init.vim (.vimrc)
"Author urielsv
"Last update: 10/10/21 (DD/MM/YY)
"Updates @ https://github.com/urielsv/dotfiles

""""""""""""""""""""""""""""""""""""
"Beginning of init.vim config file."
""""""""""""""""""""""""""""""""""""

" IMPORT CONFIG PATHS
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/mappings.vim

" PLUGINS!
call plug#begin()

" Discord Rich Presense (Show you're using vim)
Plug 'vimsence/vimsence'

" File manger
Plug 'scrooloose/nerdtree'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': '.install-all' }
Plug 'junegunn/fzf.vim'

" Syntax checking
Plug 'vim-syntastic/syntastic'

" Dracula theme
Plug 'dracula/vim'

" Display HEX color codes
Plug 'lilydjwg/colorizer'

" NVim status lines
Plug 'itchyny/lightline.vim'

" LSP Config and autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hrsh7th/nvim-compe'

" Float Terminal
Plug 'voldikss/vim-floaterm'

call plug#end()

" Automatic working dir
set autochdir

" Window title
let &titlestring = "NVim"
set title

" Formatting
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set textwidth=80
set autoindent

set number

" Theme configs
colorscheme dracula
let g:dracula=256

set t_Co=256
if &t_Co > 2
    syntax on
endif
set termguicolors

hi Normal ctermbg=Black
hi Normal ctermfg=White
hi LineNr guifg=#55eca3
hi Comment guifg=#4f4f4f
hi! Normal guibg=#181920

" Vimsense options
let g:vimsence_small_text = 'Neovim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_editing_details = 'Editing: {}'
let g:vimsence_editing_state = 'Workspace: {}'

" Config type for status mode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" NerdTree
let NERDTreeMinimalUI=1

" LSP Config
let g:ale_disable_lsp = 1
