if exists("b:current_syntax")
  finish
endif

syn match hassiumEscape	contained +\\["\\'0abfnrtvx]+

syn match hassiumNumber '\d\+'  
syn match hassiumNumber '[-+]\d\+' 

syn match hassiumNumber '\d\+\.\d*' 
syn match hassiumNumber '[-+]\d\+\.\d*'

syn region hassiumChar start='\'' end='\'' contains=hassiumEscape
syn region hassiumString start='"' end='"' contains=hassiumEscape

syn region hassiumComment start='#' end='\n'

syn keyword hassiumKeyword priv if else for foreach while until try catch in func class global break continue enum raise return use try trait switch new this
syn keyword hassiumFunctions main format getAttribute getAttributes hasAttribute input map print printf println range readChar readKey setAttribute sleep type types true false null toBool toChar toFloat toInt toList toString toTuple bool char dictionary float int list string tuple IO Math Net Reflection Text Types Util

syn region hassiumBlock start="{" end="}" fold transparent contains=ALL


let b:current_syntax = "hassium"

hi def link hassiumKeyword     Statement
hi def link hassiumFunctions   Function
hi def link hassiumString      Constant
hi def link hassiumNumber      Constant
hi def link hassiumChar        Constant
hi def link hassiumComment     Comment
