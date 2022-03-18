if ScriptRunFlagCheckAndSet("g:RcFunctionsRunFlag")
  finish
endif

function! Chomp(string)
    return substitute(a:string, '\n\+$', '', '') 
endfunction

function! ChompedSystem( ... )
    return substitute(call('system', a:000), '\n\+$', '', '') 
endfunction

" 返回当前目录，$HOME目录使用〜
function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction

