" The following lines are required by vundle vim plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All plugins should be placed here
" For more details see its Github pages
Plugin 'VundleVim/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'alessandroyorba/despacio'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'valloric/youcompleteme'

call vundle#end()

" Syntax coloring and filetype detection
syntax on
filetype plugin indent on

" utf-8 encoding
set encoding=utf-8

" Show line numbers
set number

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent

" Incremental searching
set incsearch

" Hightlight search results
set hlsearch

" Open the filesystem tree with Ctrl+X
map <C-x> :NERDTreeToggle<CR>

" Default golang formater
let g:go_fmt_command = "goimports"

" Remove all trailing spaces on save
" http://vimcasts.org/episodes/tidying-whitespace
function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" Tabs and EOL characters
set listchars=tab:▸\ ,eol:¬
set list

" Open .pp files with ruby code style
autocmd BufNewFile,BufRead *.pp set filetype=ruby

" Enable 256 color support
set t_Co=256

" Setting monokai-soda theme color
colorscheme monokai-soda

" Add CTRL+P to the runtime path
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Uncomment the line below to enable mouse
" set mouse=a

" Set ctags destination file
set tags=/tmp/tags;/

" Search Colors
highlight Search ctermbg=white ctermfg=black cterm=italic,bold term=underline,bold

" No wrap long lines
set nowrap
