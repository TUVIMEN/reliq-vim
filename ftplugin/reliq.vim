if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo-=C

"compiler reliq
"setlocal comments& comments=sO:/*,mO:*,exO:*/
setlocal comments& comments=sO:{-,exO:-}
setlocal commentstring=//\ %s

setlocal formatoptions-=t formatoptions+=croql

setlocal suffixesadd+=.reliq

let b:undo_ftplugin = "setl cms< fo< sua<"

let &cpo = s:cpo_save
unlet s:cpo_save
