set nocompatible
set number
"set relativenumber
set nocp
set ruler
set laststatus=2
syntax on
set foldmethod=syntax
set filetype=vim
set autoindent
autocmd FileType python runtime! autoload/pythoncomplete.vim
set iskeyword=@,48-57,_,192-255 
set showmatch
set smartindent
set autoindent
set cursorline
"----------------------
"
"=============НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ КОДА (фолдинг)============= "http://eax.me/vim-commands/

set foldenable           "включить свoрачивание
set foldmethod=syntax    "сворачивание на основе синтаксиса
set foldmethod=indent    "сворачивание на основе отступов
set foldmethod=manual    "выделяем участок с помощью v и говорим zf
set foldmethod=marker    "сворачивание на основе маркеров в тексте
set foldmarker=bigin,end "задаем маркеры начала и конца блока
"----------------------

"----------------------
execute pathogen#infect("bundle/{Plugin 'Syntastic'}")
syntax on

filetype plugin indent on
"----------------------
"
"---------PlugInstall--------
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'myusuf3/numbers.vim'
Plug 'vim-scripts/vim-auto-save'
"Plug 'scrooloose/syntastic'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'vim-scripts/delimitMate.vim'
call plug#end()
"----------------------
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m']

let g:enable_numbers = 0

nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersEnable<CR>
"----------------------
set spelllang=en,ru "проверка арфографи
autocmd FileType plaintext setlocal spell spelllang=ru
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" 256 colors for terminal vim
set t_Co=256
"----------------------

"--------statr NERDTree----------
"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"
"--------end NERDTree-----------
"
"
"#для редактирования простого текста 
set tw=80
source $VIMRUNTIME/macros/justify.vim
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]

"#проверка скобок
set showmatch 

