" 插件用于自动加载对应文件类型的字典文件
"
" Author: Asins (http://nootn.com)
" Last Modified: 2016-02-23 17:53 (+0800)

" <sfile> = vim-dict/autoload 需回到上层目录
let s:dictDirPath = expand('<sfile>:p:h:h?\\?/?').'/dict/'

function! AutoLoadDict()
	if(&filetype != '')
		let a:dictPath = s:dictDirPath.&filetype.'.dic'
		
    " 未加载 && 字典存在
		if strridx(&dictionary, a:dictPath) < 0 && findfile(a:dictPath) != ''
			silent execute 'setlocal dictionary+='.fnameescape(a:dictPath)
		endif
	endif
endfunction

autocmd FileType * call AutoLoadDict()
