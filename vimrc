" My .vimrc
" I use vundle(https://github.com/gmarik/vundle) as my Vim plugin manager.
"
" aboutuoba@gmail.com

set nocompatible              " be iMproved
filetype off                  " required!

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set hlsearch
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

set cscopequickfix=s-,c-,d-,i-,t-,e-,g-

let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"
let g:winManagerWidth=50
let g:Tlist_Show_One_File=1

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap <F9> :WMToggle<CR>
noremap <silent> <F8> :BufExplorer<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My bundles here:

" original repos on GitHub
Bundle 'anscoral/winmanager.vim'
Bundle 'anscoral/taglist.vim'
Bundle 'anscoral/nerdtree.vim'
Bundle 'anscoral/vim-latex'

Bundle 'ervandew/supertab'

Bundle 'aklt/plantuml-syntax'

" vim-scripts repos
" Bundle 'taglist.vim'
Bundle 'cscope_macros.vim'
Bundle 'bufexplorer.zip'
Bundle 'Colour-Sampler-Pack'
Bundle 'vcscommand.vim'
Bundle 'DrawIt'

" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'

" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

colorscheme fruity
