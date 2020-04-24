" 插件用于自动加载对应文件类型的字典文件
"
" Author: Asins (http://nootn.com)
" Last Modified: 2016-02-23 17:53 (+0800)
" Update Modified: 2019-02-11 10:33 (+0800)
" 可在_vimrc文件中指定伴随字典，如
" let g:vim_dict_config = {
" \ 'html': ['css', 'javascript']
" \ 'javascript': ['jsx'],
" \}
" 插件默认自动对html格式文件关联css javascript两个字典

" <sfile> = vim-dict/autoload 需回到上层目录
let s:dictDirPath = expand('<sfile>:p:h:h?\\?/?').'/dict/'

" 默认配置
let s:defaultConfigMap = {
\  'html': ['css', 'javascript'],
\}


if exists('g:vim_dict_config')
  call extend(g:vim_dict_config, s:defaultConfigMap, 'keep')
else
  let g:vim_dict_config = s:defaultConfigMap
endif

function! s:AutoLoadDict(filetype)
  let s:dictPath = s:dictDirPath.a:filetype.'.dic'
  " 未指定文件类型 || 已加载
	if a:filetype == '' || strridx(&dictionary, s:dictPath) >= 0
    return
	endif

  " 字典存在
  if findfile(s:dictPath) != ''
    " echo 'load fileType:'.a:filetype 'path:'.s:dictPath
    silent! execute 'setlocal dictionary+='.fnameescape(s:dictPath)
  endif

  let s:childFileTypeList = get(g:vim_dict_config, a:filetype, [])
  " echo 's:childFileTypeList == ' s:childFileTypeList
  for nr in s:childFileTypeList
    silent! call s:AutoLoadDict(nr)
  endfor
endfunction

autocmd FileType * call s:AutoLoadDict(&filetype)


