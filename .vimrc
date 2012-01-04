"recognize file encoding by encode.vim
"source ~/.vim/encode.vim
"recognize file encoding
" set encoding=japan
"

" pathogen
" call pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
syntax enable
colorschem candy-dy

set nocompatible    " use vim defaults
set hlsearch        " highlight searches
set title           " show title in console title bar
set incsearch       " do incremental searching

set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp

" show encoding on status bar
set laststatus=2
set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\

filetype plugin on
filetype indent on
set autoindent
set smartindent
set shellslash
set grepprg=grep\ -nH\ $*

" command for latex compile
let g:Tex_CompileRule_dvi = 'xelatex --interaction=nonstopmode $*'
let g:Tex_BibtexFlavor = 'jbibtex'
" let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode $*'

" file viewer
let g:Tex_ViewRule_dvi = 'xdvi'
let g:Tex_ViewRule_pdf = 'apvlv'
let g:tex_flavor='latex'

" apsell
:autocmd FileType mail :nmap <F8> :w<CR>:!aspell -e -c %<CR>:e<CR> " apsell for mutt
nmap <F8> :w!<CR>:!aspell check %<CR>:e! %<CR> " apsell for vim

" JP setting
set formatoptions+=mM "join line wihtout space at japanese line
set ambiwidth=double "fix cursor location
set display+=lastline "try to show end of line

" setJP code
" set encoding=japan
scriptencoding cp932 "for show 2byte space

"define default ZenkakuSpace
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpace if define Zenkakuspace by color file, delete below line
    autocmd ColorScheme       * call ZenkakuSpace()
    " define highlight ZenkakuSpace
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

" Show TAB and space at end of line
set list
set listchars=tab:^\ ,trail:~
" Show CR
" set listchars=tab:^\ ,trail:~,eol:$

""""""""""""""""""""""""""""""
" => bufExplorer plugin
" """"""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
map <leader>o :BufExplorer<cr>
"
" """"""""""""""""""""""""""""""
" " => Minibuffer plugin
" """"""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1
"
let g:bufExplorerSortBy = "name"
"
autocmd BufRead,BufNew :call UMiniBufExplorer
"
map <leader>u :TMiniBufExplorer<cr>
" Use the arrows to something usefull
" <ESC> is-a Meta(Alt),it is strange,but so.
map <ESC>l :bn<cr>
map <ESC><right> :bn<cr>
map <ESC>h :bp<cr>
map <ESC><left> :bp<cr>
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Highlighting: Setup some nice colours to show the mark positions.
hi default ShowMarksHLl ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLu ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLo ctermfg=253 ctermbg=None cterm=bold
hi default ShowMarksHLm ctermfg=253 ctermbg=None cterm=bold
