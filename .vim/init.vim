" neovim setting
if !has('nvim')
    syntax on
    set autoindent
    source autoread
    set backspace=indent,eol,start
    set belloff=all
    set cscopeverbose
    set complete-=i
    set display=lastline,msgsep
    set encoding=utf-8
    set filechars=vert:l,fold:
    set formatoptions=tcqj
    set fsync
    set history=10000
    set hlsearch
    set incsearch
    set langnoremap
    set laststatus=2
    set listchars=tab:>\ ,trail:-,nbsp:+
    set nrformats=bin,hex
    set ruler
    set sessionoptions-=options
    set shortmess=F
    set showcmd
    set sidescroll=1
    set smarttab
    set tabpagemax=50
    set tags=./tags;,tags
    set ttimeoutlen=50
    set ttyfast
    set viminfo+=!
    set wildmenu
endif

" insertを抜けるときにIMEをオフにする
if executable('fcitx')
   autocmd InsertLeave * :call system('fcitx-remote -c')
   autocmd CmdlineLeave * :call system('fcitx-remote -c')
endif

" sets the language of the manu
set langmenu=en_US.UTF-8    
" sets the language of the message
language en_US.UTF-8        
" シンタックスハイライトをon
syntax on 			        
" ファイルタイプに基づいたインデントをON
filetype plugin indent on 	
" 新しい行をはじめる時に自動でインデント
set autoindent 			    
" タブをスペースに変換
set expandtab			    
" タブをスペース4文字にする
set tabstop=4			    
" 自動インデントに使われるスペースの数
set shiftwidth=4		    
" バックスペースの挙動を修正
set backspace=2			    
" show line number
set number                  
" set fold indent
set foldmethod=indent
" set wildmenu
set wildmode=list:longest,full
" set vsplit as openright
set splitright

set clipboard+=unnamed,unnamedplus

set runtimepath+=~/dev/vim-algomethod-tester
" set color sheme
" set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 

" plugin
" タイムアウトを伸ばす
let g:plug_timeout = 300
" call plug#begin('~/.vim/plugged')
"     Plug 'vim-airline/vim-airline'
"     Plug 'vim-airline/vim-airline-themes'
"     " ファイル操作
"     Plug 'scrooloose/nerdtree'
"     " Git
"     Plug 'lambdalisue/gina.vim'
"     " コメントアウト
"     Plug 'scrooloose/nerdcommenter'
"     " fuzzy finder
"     Plug 'ctrlpvim/ctrlp.vim'
"     Plug 'junegunn/fzf' ,{'do': { -> fzf#install()}}
"     Plug 'junegunn/fzf.vim'
"     Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
"     " snipetts
"     Plug 'SirVer/ultisnips'
"     " easymotion
"     Plug 'easymotion/vim-easymotion'
"     " ddc.vim本体
"     Plug 'Shougo/ddc.vim'
"     " DenoでVimプラグインを開発するためのプラグイン
"     Plug 'vim-denops/denops.vim'
"     " ポップアップウィンドウを表示するプラグイン
"     Plug 'Shougo/pum.vim'
"     " カーソル周辺の既出単語を保管するsource
"     Plug 'Shougo/ddc-around'
"     " 入力中の単語を補完の対象にするfilter
"     Plug 'Shougo/ddc-matcher_head'
"     " 補完機能を適切にsortするfilter
"     Plug 'Shougo/ddc-sorter_rank'
"     " 補完候補の重複を防ぐためのfilter
"     Plug 'Shougo/ddc-converter_remove_overlap'
"     " LSP
"     Plug 'mattn/vim-lsp-settings'
"     Plug 'prabirshrestha/vim-lsp'
"     " テーマカラー
"     Plug 'tyrannicaltoucan/vim-quantum', {'do': 'cp colors/* ~/.vim/colors/'}
"     " vital.vim
"     Plug 'vim-jp/vital.vim'
" call plug#end()

" ddc-vim setting
" call ddc#custom#patch_global('sources', ['around'])

" Use matcher_head and sorter_rank.
" https://github.com/Shougo/ddc-matcher_head
" https://github.com/Shougo/ddc-sorter_rank
" call ddc#custom#patch_global('sourceOptions', {
"       \ '_': {
"       \   'matchers': ['matcher_head'],
"       \   'sorters': ['sorter_rank']},
"       \ })

" Change source options
" call ddc#custom#patch_global('sourceOptions', {
"       \ 'around': {'mark': 'A'},
"       \ })
" call ddc#custom#patch_global('sourceParams', {
"       \ 'around': {'maxSize': 500},
"       \ })

" Customize settings on a filetype
" call ddc#custom#patch_filetype(['c', 'cpp'], 'sources', ['around', 'clangd'])
" call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', {
"       \ 'clangd': {'mark': 'C'},
"       \ })
" call ddc#custom#patch_filetype('markdown', 'sourceParams', {
"       \ 'around': {'maxSize': 100},
"       \ })

" Mappings

" <TAB>: completion.
" inoremap <silent><expr> <TAB>
" \ ddc#map#pum_visible() ? '<C-n>' :
" \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
" \ '<TAB>' : ddc#map#manual_complete()
" 
" " <S-TAB>: completion back.
" inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

" Use ddc.
" call ddc#enable()


" set key mapping
let mapleader = "\<space>"
" nnoremap <c-a> gg0vG$
nnoremap <c-c> :noh<cr><esc>
" set jj to esc 
inoremap <silent> jj <ESC>
" set っｊ to esc
inoremap <silent> っｊ <ESC>
" set blucket
" inoremap ' ''<esc>i
" inoremap " ""<esc>i
" inoremap ( ()<esc>i
" inoremap { {}<esc>i
" inoremap [ []<esc>i

" set window move
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-w><c-v> :resize
nnoremap <c-w><c-s> :vertical resize

" terminal mode
tnoremap <esc> <c-\><c-n>
tnoremap <leader>q :bd!<cr>

nnoremap $e :edit $HOME/.vimrc<cr>
nnoremap $r :w<cr>:source $HOME/.vimrc<cr>
nnoremap $s :w<cr>;source %<cr>
nnoremap $p :PlugInstall<cr>

" nerdtree keymap
nnoremap <leader>gd :YcmCompleter GoTo<cr>

" NERD Commenter Default
" <leader>c<space> カーソル行のコメントの状態切り替え
" <leader>cA 行末にコメントを追加する
" <leader>cs ブロックコメントを挿入する

" plugin setting

" コメントアウトのあとにスペースを挿入する
let g:NERDSpaceDelims=1
" コメントアウトの記号をそろえる
let g:NERDDefaultAlign='left'

" snipetts
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" load dein.vim
let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dein_dir = fnamemodify('dein.vim', ':p')
  if !isdirectory(s:dein_dir)
    let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
    if !isdirectory(s:dein_dir)
      execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
    endif
  endif
  execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif

if &compatible
    set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
    call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif
if dein#check_install()
    call dein#install()
endif
filetype plugin indent on
syntax enable

" debug speed
function! ProfileCursorMove() abort
  let profile_file = expand('~/.vim/log/vim-profile.log')
  if filereadable(profile_file)
    call delete(profile_file)
  endif

  normal! gg
  normal! zR

  execute 'profile start ' . profile_file
  profile func *
  profile file *

  augroup ProfileCursorMove
    autocmd!
    autocmd CursorHold <buffer> profile pause | q
  augroup END

  for i in range(100)
    call feedkeys('j')
  endfor
endfunction
