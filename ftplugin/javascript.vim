if exists("b:did_mjsplugin")
    finish
endif
let b:did_mjsplugin = 1
echo 'hello'

nmap <leader>d :call AddDoc()<cr>
function! AddDoc()
    pyfile $VIM/vimfiles/python/a.py
    python addDoc()
endfunction
