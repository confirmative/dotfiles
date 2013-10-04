set nocompatible

set sw=4
set ts=4
set et
set sm
set vb
set nomesg
set autowrite
set nobackup nowritebackup
set wm=5
set ai
set si
set bs=1
set so=3
set shiftround
set helpheight=60

set tags=.tags;
set notr
set hidden
set wildignore+=*.class
set wildmode=longest,full

set viminfo='50,\"1000,:5,h,n~/.viminfo

syntax on

let java_allow_cpp_keywords=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"

let g:explWinSize=50

" Switch on search pattern highlighting.
set hlsearch

set title 
set titleold=""

set ttyfast

filetype indent on

set icon

set pastetoggle=<Insert>

nmap > >>
nmap < <<

" Make control del into delete word backwards
imap <F1> <ESC>
imap <F2> :noh<CR>
imap <F3> <ESC>:update<CR>
imap <F7> <C-N>
imap <F8> <ESC>

vmap <F5> :!sort<CR>
vmap <F6> gq
vmap <F8> <ESC>

nmap <F2> :noh<CR>
nmap <F3> :w<CR>
nmap <F4> :confirm q<CR>
nmap <F7> :bn<ESC>
nmap <F8> <ESC>

imap <left> <C-p>
imap <right> <C-n>

" Easier mapping for the alternate buffer
nmap <C-h> :ls<CR>
nmap <C-k> :bd<CR>
nmap <left> :bp<CR>
nmap <right> :bn<CR>
nmap <C-j> <C-^>

inoremap <C-]> <C-X><C-]>
inoremap <C-F> <C-X><C-F>
inoremap <C-L> <C-X><C-L>

" UP moves up a window
nmap <up> <C-W>k
" DOWN moves down a window
nmap <down> <C-W>j

if has("terminfo")          
  set t_Co=8
  set t_Sf=[3%p1%dm    
  set t_Sb=[4%p1%dm    
else
  set t_Co=8
  set t_Sf=[3%dm       
  set t_Sb=[4%dm       
endif

set t_Co=8
set t_Sf=[3%p1%dm
set t_Sb=[4%p1%dm

" Set nice colors
highlight Character ctermfg=yellow
highlight Comment ctermfg=lightmagenta
highlight Conditional ctermfg=lightcyan
highlight Constant ctermfg=lightgreen
highlight Function ctermfg=lightred
highlight Identifier ctermfg=yellow
highlight Include ctermfg=yellow
highlight Label ctermfg=yellow
highlight Operator ctermfg=lightgreen
highlight PreProc ctermfg=yellow
highlight Repeat ctermfg=lightcyan
highlight Search ctermfg=lightred ctermbg=none
highlight Special ctermfg=lightcyan
highlight SpecialComment ctermfg=lightmagenta
highlight Statement ctermfg=lightgreen
highlight StorageClass ctermfg=yellow
highlight String ctermfg=lightcyan
highlight Todo ctermfg=red ctermbg=NONE
highlight Type ctermfg=lightgreen
highlight Typedef ctermfg=yellow

"            NR-16   NR-8    COLOR NAME ~
"                                                        *cterm-colors*
"            0       0       Black
"            1       4       DarkBlue
"            2       2       DarkGreen
"            3       6       DarkCyan
"            4       1       DarkRed
"            5       5       DarkMagenta
"            6       3       Brown
"            7       7       LightGray, LightGrey, Gray, Grey
"            8       0*      DarkGray, DarkGrey
"            9       4*      Blue, LightBlue
"            10      2*      Green, LightGreen
"            11      6*      Cyan, LightCyan
"            12      1*      Red, LightRed
"            13      5*      Magenta, LightMagenta
"            14      3*      Yellow
"            15      7*      White
