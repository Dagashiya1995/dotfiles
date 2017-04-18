" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" undofile設定
set undolevels     =200
set undodir        =~/.vim/_undo
set undofile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" jjでノーマルモードに
inoremap <silent> jj <ESC>
" 回り込みを有効にする
set whichwrap=b,s,h,l,<,>,[,],~

" undoDirectoryがなければ作る
if !isdirectory(expand('~/.vim/_undo'))
  call mkdir(expand('~/.vim/_undo'), 'p')
endif

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデント、シンタックス有効化
filetype plugin indent on
syntax on
" インデント
set smartindent
set autoindent
set cindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk


" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set softtabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab

" 検索系
" 検索文字列が小文5字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

augroup MyColorTheme
  autocmd!
  " 行番号をを濃い灰色にする
  autocmd VimEnter * highlight LineNr ctermfg=235 ctermbg=black
  " コメントを濃い青色にする
  autocmd VimEnter * highlight Comment ctermfg=darkgray
augroup END

colorscheme monokai-phoenix
set t_ut=
