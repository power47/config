"source $VIMRUNTIME/vimrc_example.vim
if has('persistent_undo')           "check if your vim version supports
    set undodir=$HOME/.vim/undo     "directory where the undo files will be stored
    set undofile                    "turn on the feature
endif
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif


source ~/.vimrc_vundle


" OFF bipper
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set nocompatible
filetype on


source ~/.vimrc_local


" set UTF-8 encoding
"set enc=koi8-r
"set fenc=koi8-r
"set termencoding=koi8-r
set enc=utf8
set fenc=utf8
set termencoding=utf8
set autoindent  " use indentation of previous line
set smartindent " use intelligent indentation for C


""" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set smarttab         " 
"set expandtab        " replace tabs to spaces
set list             " view tab and spase
set listchars=tab:>-,trail:.


""" configure wrap lines
set textwidth=100
set nowrap


""" configure search
set showmatch
set hlsearch        " подсвечивать поиск
set incsearch       " использовать инкрементальный поиск
nnoremap n nzz
nnoremap N Nzz


""" configure line
set number          " включить нумерацию строк
set cursorline      " подсвечиват строку курсора
"highlight CursorLine guibg=lightblue ctermbg=lightgray
"highlight Cursorline term=none cterm=none
set colorcolumn=101 " отметить 101 символ в строке


""" configure folding
"set foldenable
"set foldmethod=syntax
"set foldcolumn=10
"set foldlevel=5


""" configure syntax highlighting and color schema
"syntax on
syntax enable
set background=dark
set t_Co=256
"let g:solarized_termcolors = 256
"let g:solarized_contrast = "low"
"let g:solarized_bold = 0
"colorscheme solarized
"colorscheme solarized8
"colorscheme wombat256
colorscheme PaperColor
"colorscheme pop-punk
"colorscheme papaya
"colorscheme carbonized-dark


""" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */


"
" ToDo-vim
"
nmap <F5> :TODOToggle<CR>


"
" window select
"
let mapleader = ','
map <leader>s :split<CR>  " ,s for split
map <leader>v :vsplit<CR> " ,v for vsplit
"map <C-_> :split<Cr>
"map <C-|> :vsplit<Cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

map <C-S-Up> <C-W>-
map <C-S-Down> <C-W>+
map <C-<> <C-W><
map <C->> <C-W>>
"nnore


"
" for NERDTree
"
"autocmd vimenter * NERDTree
autocmd BufEnter * lcd %:p:h    " переход в директорию с текущим файлом

let g:NERDTreeDirArrows = 0
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeQuitOnOpen = 1    " закрывать при открытии файла

nnoremap <F3> :NERDTreeToggle<CR>


"
" for NERDcommenter
"
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
"let g:NERDToggleCheckAllLines = 1


"
" for winmanager
"
map <c-w><c-f> :FirstExplorerWindow<CR>
map <c-w><c-b> :BottomExplorerWindow<CR>
map <c-w><c-t> :WMToggle<CR>


"
" for taglist
"
let Tlist_Use_Right_Window=1
"let Tlist_WinWidth=30
nmap <F8> :TlistToggle<CR>


"
" neocomplcache
"
"let g:neocomplcache_enable_at_startup = 1


"
" airline - disable
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'



"
" lightline
"
set laststatus=2


"
" supertab
"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"


"
" syntastic - disable
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"
" build mappings
"
map <F7>   :wall \| :compiler gcc \| make     \| :tabnew \| :copen<CR>
map <F6>   :wall \| :compiler gcc \| make c   \| :tabnew \| :copen<CR>
map <c-F6> :wall \| :compiler gcc \| make cz  \| :tabnew \| :copen<CR>
map <S-F6> :wall \| :compiler gcc \| make ccz \| :tabnew \| :copen<CR>
map <F4>   :cn<CR>zvzz:cc<CR>
map <S-F4> :cp<CR>zvzz:cc<CR>
map <c-F4> :wall \| :cclose<CR>:q<CR>
