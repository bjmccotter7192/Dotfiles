set number
set relativenumber
set mouse+=a
set tabstop=4
set shiftwidth=4
filetype indent on
set foldmethod=syntax
set foldlevelstart=99

" Auto formatting for Markdown files
augroup auFileTypes
  autocmd!
  autocmd FileType markdown setlocal textwidth=100
augroup end

" Plugins

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'maxmellon/vim-jsx-pretty' " JSX syntax highlighting
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'pangloss/vim-javascript' " Better syntax highlighting for JS
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'dyng/ctrlsf.vim' " Find specific words in project
Plug 'APZelos/blamer.nvim' " Git Lens VS Code clone
Plug 'airblade/vim-gitgutter' " Git Gutter for showing diffs
Plug 'OmniSharp/omnisharp-vim' " Better C# highlighting
Plug 'https://github.com/vim-python/python-syntax' " Better python Highlighting
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go highlighting and building

call plug#end()

set encoding=UTF-8
set background=dark
set termguicolors
colorscheme deep-space

nnoremap <C-p> :Files<CR>
nnoremap <C-l> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-q> :bd<CR>

nmap     <C-f>  <Plug>CtrlSFPrompt
nnoremap <C-s> :CtrlSFToggle<CR>

nnoremap <C-n> :bnext<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <F8> :TagbarToggle<CR>
nmap <F12> :OmniSharpGotoDefinition<CR>

" Git Gutter Settings
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'

" NerdTree settings
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_powerline_fonts = 1

let g:airline_theme='deep_space'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" CtrlSF Settings
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }

" Blamer Settings
let g:blamer_enabled = 1
let g:blamer_delay = 1000 
let g:blamer_show_in_insert_modes = 0
let g:blamer_show_in_visual_modes = 0
let g:blamer_date_format = '%m/%d/%y'

" Python Highlighting
let g:python_highlight_all = 1

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Coc nvim extensions
let g:coc_global_extensions = [
	\'coc-html',
	\'coc-yaml',
	\'coc-tsserver',
	\'coc-solargraph',
	\'coc-sh',
	\'coc-pyright',
	\'coc-omnisharp',
	\'coc-lua',
	\'coc-json',
	\'coc-go',
	\'coc-docker',
	\'coc-css'
	\]
