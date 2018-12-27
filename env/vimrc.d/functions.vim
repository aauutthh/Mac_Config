if ScriptRunFlagCheckAndSet("g:RcFunctionsRunFlag")
  finish
endif

function! Chomp(string)
    return substitute(a:string, '\n\+$', '', '') 
endfunction

function! ChompedSystem( ... )
    return substitute(call('system', a:000), '\n\+$', '', '') 
endfunction

