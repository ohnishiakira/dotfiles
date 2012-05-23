language messages C

source ~/dotfiles/.vimrc.vundle
" source ~/dotfiles/.vimrc.encoding

set nocompatible
" set encoding=utf-8
" set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set ambiwidth=double
set number
set scrolloff=3
set expandtab
set shiftwidth=2 softtabstop=2
set laststatus=2
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v(ASCII=%05.5b,HEX=%04.4B)\ %l/%L(%P)%m
set clipboard+=unnamed
set backspace=indent,eol,start
set ignorecase
set smartcase
set foldmethod=marker

set incsearch
set hlsearch

set directory=~/tmp
set backupdir=~/tmp

set showtabline=2
syntax enable

set background=dark
colorscheme solarized

" autocmd FileType *
" \  if &omnifunc == "" |
" \   setlocal omnifunc=syntaxcomplete#Complete |
" \  endif

" for *.json
autocmd BufNewFile,BufRead *.json setf json

" Gemfile
autocmd BufNewFile,BufRead Gemfile setf ruby

" for US keyboard
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" move by logical line
nnoremap j gj
nnoremap k gk

nnoremap <Esc><Esc> :nohlsearch<CR><Esc>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion   = 1

" zen-coding.vim
let g:user_zen_settings = {
\   "indentation": "  ",
\   "lang": "ja",
\   "charset": "utf-8"
\}

" Gist.vim
source ~/dotfiles/.vimrc.gist

" git-vim
let g:git_command_edit = "rightbelow vnew"

"NerdCommenter.vim
let g:NERDSpaceDelims = 1

" unite.vim
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,ud :<C-u>UniteWithBufferDir file -buffer-name=files<CR>
nnoremap <silent> ,uf :<C-u>Unite buffer file<CR>
nnoremap <silent> ,ur :<C-u>Unite file_mru<CR>
nnoremap <silent> ,uu :<C-u>Unite buffer file file_mru<CR>
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')

" surround.vim
let g:surround_{char2nr("d")} = " do \r end"

" vimfiler
let g:vimfiler_as_default_explorer = 1

" gundo.vim
nnoremap U :GundoToggle<CR>
