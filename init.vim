" Install Plugins
call plug#begin('~/.vim/plugged')

Plug  'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug	'davidhalter/jedi-vim'
Plug	'leafgarland/typescript-vim'
Plug	'vim-airline/vim-airline-themes'
Plug	'vim-airline/vim-airline'
Plug	'tpope/vim-commentary'
Plug	'easymotion/vim-easymotion'
Plug	'tpope/vim-fugitive'
Plug	'tpope/vim-git'
Plug	'pangloss/vim-javascript'
Plug  'mxw/vim-jsx'
Plug	'tpope/vim-surround'
Plug	'jreybert/vimagit'
Plug	'vim-scripts/SearchComplete'
Plug	'dag/vim-fish'
Plug	'airblade/vim-gitgutter'
Plug	'ap/vim-css-color'
Plug	'JamshedVesuna/vim-markdown-preview'
Plug	'ryanoasis/vim-devicons'
Plug	'ternjs/tern_for_vim'
Plug	'moll/vim-node'

call plug#end()

" utility settings
set t_Co=256 " fixes coloring issues
set encoding=utf8 " devicons plugin
set clipboard=unnamed " alows for universal copy and paste
set nu " lines numbers
set mouse=a " enables mouse to click on files
set guicursor= " makes cursor default to the profile settings
set termguicolors " sets coloring based on themes
let g:netrw_dirhistmax=0 " stops writing to history file

" Create panes to the right and bottom
set splitbelow
set splitright

" Git Gutter delay Time
set updatetime=100

" makes tab 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Autocompletion menu color
hi Pmenu ctermbg=grey ctermfg=white
hi PmenuSel ctermbg=blue ctermfg=white

" colorscheme for editor and airline bar
colorscheme Brogrammer
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['tabline']

" netrw configuration
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_winsize = 25

" Set python providers
let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'

" Sets YCM Python to virtualenv if it exists
let g:ycm_python_binary_path = 'python'

" javascript autocompletion
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
" enhance YCM JS completion with tern's smarts
autocmd FileType javascript setlocal omnifunc=tern#Complete

" C language completion
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" Markdown Preview
" <C-p> to launch preview
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='firefox'
" Un-Comment in no internet connection is available
" let vim_markdown_preview_toggle=1
" let vim_markdown_preview_temp_file=1

" Key mappings
" Spell Check
map <C-S> :setlocal spell! spelllang=en_us<CR>

" Easy Motion bindings
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Makes semi-colon into a colon
nnoremap ; :

" Easer pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
