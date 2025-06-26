set autoindent        " automatically set the indent of a new line
set autowrite         " automatically write file when leaving a modified buffer
set encoding=utf-8    " character encoding used in vim: "utf-8"
set expandtab         " expand <Tab> to spaces in Insert mode
set exrc              " enable reading .vimrc/.exrc/.gvimrc in current directory
set filetype=         " type of file; triggers the FileType event when set
set hidden            " don't unload a buffer when no longer shown in a window
set ignorecase        " ignore case when using a search pattern
set incsearch         " show match for partly typed search command
set noerrorbells      " don't ring the bell for error messages
set nohlsearch        " highlight all matches for the last used search pattern
set noshowmode        " don't display the current mode in the status line
set number            " show the line number for each line
set scrolloff=0       " number of screen lines to show around the cursor
set shiftwidth=4      " number of spaces used for each step of (auto)indent
set showcmd           " show (partial) command keys in the status line
set showmatch         " when inserting a bracket, briefly jump to its match
set showtabline=0     " don't show the tab page line (default set showtabline=1)
set smartcase         " override 'ignorecase' when pattern has upper case char
set smartindent       " do clever autoindenting
set softtabstop=4     " if non-zero, number of spaces to insert for a <Tab>
set spelllang=en_us   " list of accepted languages
set tabstop=4         " number of spaces a <Tab> in the text stands for
set term=st-256color  " name of the used terminal
set textwidth=80      " line length above which to break a line


" color scheme [hi = highlight]
hi LineNr ctermfg=DarkGrey ctermbg=None
hi StatusLine ctermfg=White ctermbg=Black cterm=None
hi StatusLineNC ctermfg=White ctermbg=Black cterm=None
hi TabLine ctermfg=DarkGrey ctermbg=None
hi TabLineFill ctermfg=233 ctermbg=None
hi TabLineSel ctermfg=None ctermbg=None
hi VertSplit ctermfg=DarkGrey ctermbg=None cterm=None
hi DiffAdd ctermfg=Green ctermbg=None   " line was added
hi DiffChange ctermfg=215 ctermbg=None  " part of the line was changed
hi DiffDelete ctermfg=Red ctermbg=None  " line was removed
hi DiffText ctermfg=Blue ctermbg=None   " the exact part of the line that changed


" remove trailing whitespace on command
function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

command! WS call TrimWhitespace()


" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e


" automatically close brackets, parethesis, double quotes, and single quotes
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {; {};<left><left>
"inoremap /* /**/<left><left>


" templates
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.html 0r ~/.vim/templates/template.html
        autocmd BufNewFile *.jl 0r ~/.vim/templates/template.jl
        autocmd BufNewFile *.js 0r ~/.vim/templates/templage.js
        autocmd BufNewFile *.m 0r ~/.vim/templates/template.m
        autocmd BufNewFile *.py 0r ~/.vim/templates/template.py
        autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh
    augroup END
endif


" tabstop, softtabstop, shiftwidth
if has("autocmd")
    filetype plugin indent on
    autocmd FileType c setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType haskell setlocal ts=8 sts=8 sw=8 expandtab
    autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType julia setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 noexpandtab
endif


" enable all Python syntax highlighting features
let python_highlight_all = 1

" netrw file browser configuration
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
"augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :Vexplore
"augroup END
