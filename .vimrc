" This isn't vi
set nocompatible

" netrw
syntax enable
filetype plugin on

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" Line numbering
set number
set relativenumber

" Copy/paste & clipboard settings, remapping to xclip for convenience.
autocmd TextYankPost * :call system('xclip -sel clipboard', v:event.regcontents)
" noremap <expr> <silent><Leader>y "ry <Bar> :call system('xclip -sel clipboard', @r)<CR>
" function ToSystemClip(the_op)
"   eval "ra:the_op <Bar> :call system('xclip -sel clipboard', @r)<CR>
" endfunction

" Snippets
" nnoremap <Leader>html :-1read /path/to/plaintext/file/with/content<CR><after snippet before interact>

" Magic
set path+=**

" Linebreaks and wrapping
set linebreak
set showbreak=+++
set textwidth=100

" Vim command finding
set wildmenu
set showcmd 

" Search and Highlight
set hlsearch
set showmatch
set smartcase

" Tabs
set autoindent
set copyindent
set cindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set shiftround

" Bottom Bar configuration
set ruler
set showtabline=2
set cmdheight=2

" Read Write confgi
set autochdir    " 
set autowriteall " Autosave on buffer commands
set autoread     " If file changes on disk, vim reloads 

" Number of undos permitted
set undolevels=1000

" Backspace behavior
set backspace=indent,eol,start

" ignore whitespace in diff mode
" set diffopt+=iwhite

" Be able to arrow key and backspace across newlines
set whichwrap=bs<>[]

" highlight cursor line
set cursorline

colorscheme vimvscode

