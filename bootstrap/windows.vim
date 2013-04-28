let Tlist_Ctags_Cmd = "e:/Programs/tools/ctags/ctags.exe"
let g:ConqueTerm_PyExe = 'e:/programs/python/python.exe'
source $VIM/vimfiles/bootstrap/ms.vim

"vimwiki
let g:vimwiki_list = [{'path': 'F:/info/vimwiki/',
\ 'path_html': 'F:/info/vimwiki/html/',
\ 'html_header': 'F:/info/vimwiki/template/header.tpl',}]

nmap <leader>l :source $VIM/vimfiles/bootstrap/index.vim<CR>
nmap <leader>v :e $VIM/vimfiles/bootstrap/index.vim<cr>

nmap <leader>wt :e F:/info/vimwiki/todolist.wiki<CR>
nmap <leader>ht :e C:/Windows/System32/drivers/etc/hosts<CR>

"setlocal dict+=$VIM/vimfiles/dict/javascript.dict
"setlocal dict+=$VIM/vim72/dict/javascript.dict


nmap <leader>a :e f:/Code/vimfiles/tmp.txt<cr>

nmap <leader>t :call CallAnt()<CR>
function! CallAnt()
    if stridx(getline('.'), '<target name="') == -1
        echo 'ant target not found'
    else
        cd %:p:h " change to the directory of the current file, see ':help cmdline' for details
        exec "!start cmd /c ant -f %<.xml ". split(getline('.'), '"')[1] . " & pause"
    endif
endfunction

au BufNewFile,BufRead *.py      		map <F9> :call CR_Python()<CR><space>
au BufNewFile,BufRead *.cpp      		map <F9> :call CR_GPP()<CR><space>
function! CR_Python()
exec "update"
exec "!start cmd /c e:/programs/python/python.exe %<.py & pause"
endfunc
"map <F10> :call CR_GPP()<CR><space>
func! CR_GPP()
exec "update"
exec "!start cmd /c g++ %<.cpp -Wall -o %<.exe & pause & %< & pause"
endfunc

"map <F8> :call CR0()<CR><space>
"func CR0()
"exec "update"
"exec "!start cmd /c javac %<.java& pause & java %< & pause"
"endfunc
map <F10> :call CR1()<CR><space>
func! CR1()
exec "update"
exec "!start cmd /c C:/MinGW/bin/g++ %<.cpp -Wall -o %<.exe & pause & %< < %<.in & pause"
endfunc

let java_allow_cpp_keywords = 1
augr class
au!
au bufreadpost,filereadpost *.class %!E:/Programs/tools/jad/jad.exe -ff -i -p %
au bufreadpost,filereadpost *.class set readonly
au bufreadpost,filereadpost *.class set ft=java
au bufreadpost,filereadpost *.class normal gg=G
au bufreadpost,filereadpost *.class set nomodified
augr END

colo my_evening

cd f:/Code/vimfiles
