" The following lines are required by vundle vim plugin manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" All plugins should be placed here
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
set incsearch
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

" Tabs and EOL characters
set listchars=tab:▸\ ,eol:¬
set list

autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")
autocmd BufNewFile,BufRead *.pp set filetype=ruby

set t_Co=256
colorscheme monokai-soda
set runtimepath^=~/.vim/bundle/ctrlp.vim
set mouse=a
set tags=/tmp/tags;/

" Search Colors
highlight Search ctermbg=grey ctermfg=white cterm=bold term=underline,bold
