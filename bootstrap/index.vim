let mapleader = ","
let g:mapleader = ","
let tlist_js_settings = 'javascript;s:string;a:array;o:object;f:function'
let g:ConqueTerm_PyVersion = 2
let g:ConqueTerm_FastMode = 1
set tags=tags

call pathogen#infect()

nmap j gj
nmap k gk

""for nodejs
nmap zo _f.d5l
nmap zi _fta.only<Esc>
nmap zp _f,a<cr><Esc>
nmap zu _i_<Esc>
nmap zl :.s/instance/_blogService/g<cr>
map zk I>> <Esc>
"nmap zu :.s/“|”/"/g

"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWindowLayout = "TagsExplorer|FileExplorer"
"let g:winManagerWindowLayout = "TagList|FileExplorer"
let g:winManagerWindowLayout = "FileExplorer"
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30
"定义打开关闭winmanager按键
"nmap <leader>wm :WMToggle<cr>
nmap <leader>wm :NERDTree<cr>
nmap <C-w>m <C-W>30>
nmap <C-w>M <C-W>30<
nmap <leader>wc <Plug>VimwikiToggleListItem

nmap yv 0v$"+y
nmap <leader>b :EasyBuffer<cr>
"%s/^/\=line(".") . ", "/g "add line number before each line

"map = ma/!!!!!<cr>+:.co 'a-1<cr>/!!!!!<cr>2+:.m'a<cr>+=

"remove bells
"set noerrorbells
set vb t_vb=
set ignorecase

set viminfo+=!


function! EnhCommentifyCallback(ft)
    if a:ft == 'todolist'
        let b:ECcommentOpen = 'TODO: '
        let b:ECcommentMiddle = ''
        let b:ECcommentClose = ''
    elseif a:ft == 'snippets'
        let b:ECcommentOpen = '#'
        let b:ECcommentMiddle = ''
        let b:ECcommentClose = ''
    endif
endfunction
let g:EnhCommentifyCallbackExists = 'Yes'

" map control-backspace to delete the previous word
:imap <C-BS> <C-W>
:imap <C-Del> <C-O>dw

" remove all empty lines
nmap <F1> :%s/^\s*\n//g<cr>
"nmap <F6> maA<Tab><Tab><Tab>N<Esc>`a
"nmap <F7> maA<Tab><Tab><Tab>I<Esc>`a
"nmap <F8> :.s/\s\+.*$//g<cr>

nmap s :w!<cr>
"save the clipboard to the end of the file.
nmap <leader>s mwGo<Esc>p`w

nmap <C-h> <Plug>MarkSet
vmap <C-h> <Plug>MarkSet

nmap Q :x<cr>

nmap @ @a

nmap <C-t>   :tabnew<cr>
nmap <C-p>   :bp<cr>
nmap <C-n>   :bn<cr>
"nmap <C-w>   :x<cr>
nmap <C-Tab> :tabnext<cr>

"substitute all \ to /
noremap <F2> :.s;\\;/;g<cr>
"remove all the ^M
noremap <F3> :%s;\r;;g<cr>

"inoremap <C-D> <C-O>dd
"inoremap <F3> /**/<left><left>
map <F4> ,x
inoremap <CR> <CR><left><right>
nnoremap <o> <o><left><right>
nnoremap <O> <O><left><right>
"inoremap <c-]> {<cr>}<c-o>O<left><right>
"noremap <F6> =a{
syn on
se ru nu

"set nowrap
set shiftwidth=4
set tabstop=4
"no swap file
set noswf
set expandtab
set smarttab
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1
autocmd BufEnter * lcd %:p:h
"set gfn=Courier\ New\ 10

set ww=<,>,[,]
set lines=40 columns=100
set go=

au BufNewFile,BufRead *.jade      		set shiftwidth=2
au BufNewFile,BufRead query_*.txt    		setf sql
au BufNewFile,BufRead tmp.txt    		setf todolist
au BufNewFile,BufRead *.version 		setf properties
au BufNewFile,BufRead *.log      		set nowrap
au BufNewFile,BufRead *.log      		setf log
au BufNewFile,BufRead *.pom      		setf xml
au BufNewFile,BufRead *.dmp 		    setf sql
au BufNewFile,BufRead *.ddl 		    setf sql
au BufNewFile,BufRead *.ftl		    	setf ftl
au BufNewFile,BufRead *.drl		    	setf drools
au BufNewFile,BufRead *.scala	    	setf scala
au BufNewFile,BufRead *.cshtml	    	setf html
au BufNewFile,BufRead *.tag		    	setf jsp
au BufNewFile,BufRead *.pig		    	setf pig
au BufNewFile,BufRead *.json	    	setf javascript
au BufNewFile,BufRead *.snippets        normal zn
filetype indent on
filetype plugin on
syntax on
"au FileType javascript set shiftwidth=2

"set foldenable
"set foldmethod=indent

"ignore the ^M.
:match Ignore /\r$/

"marker
"noremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"inoremap ( ()<left>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap { {}<left>
"inoremap } <c-r>=ClosePair('}')<CR>
"inoremap [ []<left>
"inoremap ] <c-r>=ClosePair(']')<CR>
"function ClosePair(char)
"if getline('.')[col('.') - 1] == a:char
"return "\<Right>"
"else
"return a:char
"endif
"endf

"Used by winmanager
let g:NERDTree_title = "[NERDTree]"
function! NERDTree_Start() 
    exe 'NERDTree'
endfunction 
function! NERDTree_IsValid() 
return 1 
endfunction
