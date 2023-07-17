"VUNDLE
set nocompatible              " be iMproved, required
set backspace=2               " fix for backspace issues
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vue.js syntax highlighting
Plugin 'posva/vim-vue'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" Bufexplorer
"Plugin 'http://www.vim.org/scripts/download_script.php?src_id=20953'
Plugin 'jlanzarotta/bufexplorer'

" Rename file plugin
Plugin 'danro/rename.vim'

" PHPDoc plugin
"Bundle 'tobyS/pdv'

" git plugin
Plugin 'tpope/vim-fugitive'

" Plugin that the above PHPDoc plugin uses
"Plugin 'tobyS/vmustache'

" Snippets plugin
Plugin 'SirVer/ultisnips'

" Multi-language debugger
"Plugin 'joonty/vdebug.git'

" Multi-language syntax checking
"Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'

" Plugin for relative numbers & switching
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Plugin for auto closing brackets, parethesis, etc.
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'Raimondi/delimitMate'
"Plugin 'kana/vim-smartinput'

" Plugin to make searching for files easier
Plugin 'kien/ctrlp.vim'

" Plugin for ack
"Plugin 'mileszs/ack.vim'

" Plugin for easy navigating in the current buffer
"Plugin 'Lokaltog/vim-easymotion'

" A simpler version of easymotion that only applies to the current line
"Plugin 'joequery/Stupid-EasyMotion'

" Plugin for ctags outline (visually see the program outline)
"Plugin 'majutsushi/tagbar'

" Plugin for autocompleting tags in xml/html documents
"Plugin 'sukima/xmledit'

" LESS plugin
Plugin 'groenewege/vim-less'

" Jade plugin
"Plugin 'digitaltoad/vim-jade'

" PHP Parser
" Plugin 'nikic/PHP-Parser'

" Plugin for better commenting
Plugin 'scrooloose/nerdcommenter'

" Plugins for nicer copying/pasting
" Plugin 'tpope/vim-repeat'
" Plugin 'svermeulen/vim-easyclip'

" Plugin to provide syntax highlighting for React JSX files
Plugin 'mxw/vim-jsx'
Plugin 'yuezk/vim-js'
" Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'chemzqm/vim-jsx-improve'

" Plugin for autocompletion
Plugin 'vim-scripts/AutoComplPop'

" Elixir
Plugin 'elixir-editors/vim-elixir'

" Plugin for displaying diff information
Plugin 'airblade/vim-gitgutter'

" Plugin for go langauge
"Plugin 'fatih/vim-go'

" Plugin for improved undo w/ history
"Plugin 'mbbill/undotree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Related to tabs and spacing
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Syntax highlighting
"set syntax on
syntax on

" Show line numbers
set number

" Make vim's auto-complete behave like bash
set wildmenu
set wildmode=list:longest

" Setting up keys for PHPDoc plugin bound to Control-P
"autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
"autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
"autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
"let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
"nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> -p :call pdv#DocumentWithSnip()<CR>

" Syntastic plugin
"let g:syntastic_python_python_exec = '~/bin/python'
"let g:syntastic_php_checkers = ["php","phpcs"]
"let g:syntastic_gjslint_exec = '~/.local/bin/gjslint'
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'
"let g:syntastic_javascript_gjslint_args = '--max_line_length 120'
" The highlighting makes it difficult to find the cursor
"let g:syntastic_enable_highlighting = 0

" Ale plugin
let g:ale_completion_enabled = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" Ctrl-P plugin settings to ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*\\node_modules\\*,*\\bower_components\\*,*\\reports\\*
set wildignore+=*\\deps\\*,*\\build\\*      " Elixir depedencies
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|\.class|node_modules/|bower_components/|coverage/|doc/|dist/|reports/|logs/|deps/|_build/'
" Force Ctrl-P to only search from the root directory
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 0
let g:ctrlp_max_files = 30000

" ------- The following block is for making NERDTree follow the current buffer
"
" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
  
" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction
   
" Highlight currently open buffer in NERDTree
" autocmd BufEnter * call SyncTree()"

" ---------- END BLOCK ------------

" The following 2 commands will allow for saving undo history even after
" switching buffers--by default you lose history when you switch buffers
" Tell it to use an undo file
if has("persistent_undo")
  set undodir=~/.vim/undo/
  set undofile
endif

" turn on relative numbers
set relativenumber

"map <Leader> <Plug>(easymotion-prefix)

" Force handlebars template files to be interpreted as html
au BufNewFile,BufRead *.hbs set filetype=html

" NERDTree focus on current buffer
nnoremap <Leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>

" Reset the CtrlP cache
nnoremap <Leader>pc :CtrlPClearAllCaches<CR>

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

" Disable automatic comment insertion of // but not /* */
inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'
nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : 'O'
nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : 'o'

" Alternate to using the escape key
inoremap <silent> jj <C-c>:stopinsert<cr>

" For better pasting (so vim doesn't try to format what you're pasting)
set pastetoggle=<F2>

" For Vue syntax highlighting
au BufNewFile,BufRead *.vue setf vue

"Highlight the current word
nnoremap <space> viw
colorscheme wombat256i

command! BareOff set number | set relativenumber | NERDTree
command! -bar BareOn set number! | set relativenumber! | NERDTreeClose
