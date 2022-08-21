set autoindent        " automatically set the indent of a new line
set autowrite         " automatically write file when leaving a modified buffer
set encoding=utf-8    " character encoding used in vim: "utf-8"
set expandtab         " expand <Tab> to spaces in Insert mode
set filetype=         " type of file; triggers the FileType event when set
set hidden            " don't unload a buffer when no longer shown in a window
set ignorecase        " ignore case when using a search pattern
set incsearch         " show match for partly typed search command
set nohlsearch        " highlight all matches for the last used search pattern
set number            " show the line number for each line
set shiftwidth=4      " number of spaces used for each step of (auto)indent
set showcmd           " show (partial) command keys in the status line
set showmatch         " when inserting a bracket, briefly jump to its match
set smartcase         " override 'ignorecase' when pattern has upper case char
set smartindent       " do clever autoindenting
set softtabstop=4     " if non-zero, number of spaces to insert for a <Tab>
set spelllang=en_us   " list of accepted languages
set tabstop=4         " number of spaces a <Tab> in the text stands for
set term=st-256color  " name of the used terminal
set textwidth=80      " line length above which to break a line


" netrw file browser configuration
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * :Vexplore
augroup END


function! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfunction

command! TrimWhitespace call TrimWhitespace()


highlight LineNr ctermfg=DarkGrey ctermbg=None
highlight StatusLine ctermfg=White ctermbg=Black cterm=None
highlight StatusLineNC ctermfg=White ctermbg=Black cterm=None
highlight TabLine ctermfg=DarkGrey ctermbg=None
highlight TabLineFill ctermfg=233 ctermbg=None
highlight TabLineSel ctermfg=White ctermbg=None
highlight VertSplit ctermfg=DarkGrey ctermbg=None cterm=None


if has("autocmd")
    augroup templates
        autocmd BufNewFile *.html 0r ~/.vim/templates/template.html
        autocmd BufNewFile *.jl 0r ~/.vim/templates/template.jl
        autocmd BufNewFile *.m 0r ~/.vim/templates/template.m
        autocmd BufNewFile *.py 0r ~/.vim/templates/template.py
        autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh
    augroup END
endif


autocmd FileType c setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd FileType html setlocal ts=2 sw=2 sts=2 expandtab
autocmd FileType javascript setlocal ts=4 sw=4 sts=4 noexpandtab
