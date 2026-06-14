" Clipboard
" Allow yanking to system clipboard
set clipboard=unnamedplus
" Yank selected text to system clipboard Ctrl+C in visual mode
vnoremap <C-c> "+y

" Display
" Show line numbers
set number

" Indentation
" Use 2 spaces for indentation
set tabstop=2
set shiftwidth=2
set expandtab

" Cursor movement
" Allow cursor to wrap to the next/previous line with arrow keys and h/l
" - < > : arrow keys in normal/visual mode
" - [ ] : arrow keys in insert/replace mode
" - h l : h/l keys in normal/visual mode
set whichwrap+=<,>,h,l,[,]

" LaTeX
" Disable auto-indent for LaTeX files
" - noautoindent  : disable copying indent from the previous line
" - nosmartindent : disable systax-based auto-indent
" - indentexpr=   : clear any indent function set by plugins
autocmd FileType tex setlocal noautoindent nosmartindent indentexpr=

