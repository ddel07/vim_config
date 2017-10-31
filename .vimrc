"==================
"基本设置
"==================
set nocompatible    "去掉vi的一致性
set number          "显示行号"
set showcmd         "显示输入命令
syntax on           "开启语法高亮"
set tabstop=4       "设置tab长度"
set shiftwidth=4    "同上"
set showmatch       "显示匹配的括号"
set mouse=a         "启用鼠标"
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set autoread        "文件在Vim之外修改过，自动重新读入"
set autowrite       "设置自动保存内容"
set autochdir       "当前目录随着被编辑文件的改变而改变"
let mapleader = ' ' "将<leader>映射到空格键
"ESC键默认可以使用 Ctrl+[ 来代替
map <leader>wq :wq<CR>
map <leader>w :w<CR>
map <leader>q :q<CR>


" 隐藏滚动条"    
"set guioptions-=r 
"set guioptions-=L
"set guioptions-=b
"隐藏顶部标签栏"
"set showtabline=0
"设置字体"
"set guifont=Monaco:h13         
"let g:solarized_termcolors=256    "solarized主题设置在终端下的设置"
"set background=dark        "设置背景色"
"colorscheme solarized
set fileformat=unix    "设置以unix的格式保存文件"
set cindent        "设置C样式的缩进格式"
set scrolloff=5        "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set selection=exclusive
set selectmode=mouse,key
"set matchtime=5
set noexpandtab        "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
"set cursorline        "突出显示当前行"
"set cursorcolumn        "突出显示当前列"

"==================
"插件设置
"==================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	"Plugin 'Lokaltog/vim-powerline'
	Plugin 'Valloric/YouCompleteMe'
	Plugin 'vim-airline/vim-airline'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'jiangmiao/auto-pairs'
call vundle#end()
filetype plugin indent on

"==================
"Power-line设置
"==================
"set guifont=PowerlineSymbols\ for\ Powerline
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_cache_enabled=1
"let Powerline_symbols = 'compatible'
set encoding=utf-8

"===================
"YouCompleteMe
"===================
set runtimepath+=~/.vim/bundle/YouCompleteMe
"let g:ycm_collect_identifiers_from_tags_files = 1  "开启YCM基于标签引擎
"let g:ycm_collect_identifiers_from_comments_and_strings = 1 "注释与字符串中的内容也用于补全
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F4> :YcmDiags<CR>
let g:ycm_python_binary_path = 'python3'

"=======================
"NERDTree
"=======================
"let NERDTreeWinPos='right'
"let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

"======================
"vim-airline
"======================
"let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1

