" vimの機能をフル発揮するためのやつ
set nocompatible

" 文字,改行,indent,をbackspaceで削除できるようにする
set backspace=start,eol,indent

" 行を超えたカーソルの移動など
set whichwrap=b,s,[,],<,>,~

" マウスとの連動機能を無効化
set mouse=

" シンタックスハイライトを有効にする
syntax on
set nohlsearch

" ステータスラインの設定
set laststatus=2
set statusline=%F%r%h%=

" 行番号を行の先頭に表示させる
set number

" インクリメンタル検索を有効にする
set incsearch
set ignorecase

" 補完入力を実施できるようにする
set wildmenu wildmode=list:full

" tabキーでカーソルを15文字分右に移動,shift+tabキーで左に同じく移動
nmap <silent> <Tab> 15<Right>
vmap <silent> <Tab> <C-o>15<Right>
nmap <silent> <S-Tab> 15<Left>
vmap <silent> <S-Tab> <C-o>15<Left>

" Ctrl+nで次々に次のファイルへ編集対象を切り替える
nmap <silent> <C-n> 		:update<CR>:bn<CR>
imap <silent> <C-n> <ESC> 	:update<CR>:bn<CR>
vmap <silent> <C-n> <ESC> 	:update<CR>:bn<CR>
cmap <silent> <C-n> <ESC> 	:update<CR>:bn<CR>

" 三点リーダ, 星マーク, 矢印の表示を直す
:set ambiwidth=double

" vim-latexの設定
let tex_flavor='latex'
set grepprg=grep\ -nH\ $*
set shellslash
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
let g:Tex_FormatDependency_pdf='dvi,pdf'

" PDFはPreview.appで開く
let g:Tex_ViewRule_pdf='open -a Preview.spp'

" clipboardを使えるようにする
set clipboard+=unnamed

" Tabキーを押し下げた時の挿入される空白の量
set tabstop=2
set shiftwidth=2
set softtabstop=0












