if exists("b:current_syntax")
  finish
endif

syn match hassiumEscape	contained +\\["\\'0abfnrtvx]+

syn match hassiumNumber '\d\+'  
syn match hassiumNumber '[-+]\d\+' 

syn match hassiumNumber '\d\+\.\d*' 
syn match hassiumNumber '[-+]\d\+\.\d*'

syn region hassiumString start='"' end='"' contains=hassiumEscape

syn keyword hassiumKeyword if else for foreach while try catch in thread
syn keyword hassiumFunctions print input strcat cls getbol getfcol setbcol setfcol pause getarr setarr resizearr arrlen concatarr newarr tonum tostr tobyte toarr puts readf readfarr mdir ddir dfile getdir setdir fexists system pow sqrt hash dowstr dowfile upfile free exit type throw import strcat strlen getch sstr begins toupper tolower newsql sqlquery sqlselect sqlopen sqlclose

syn region hassiumBlock start="{" end="}" fold transparent contains=ALL


let b:current_syntax = "hassium"

hi def link hassiumKeyword     Statement
hi def link hassiumFunctions   Function
hi def link hassiumString      Constant
hi def link hassiumNumber      Constant
