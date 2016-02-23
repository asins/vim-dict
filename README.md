VIM 字典仓库
============

包含以下语言词库：

 - c.dic
 - context.dic
 - cpp.dic@	 --> c.dic
 - cs.dic
 - css.dic
 - dot.dic
 - erlang.dic
 - haskell.dic
 - html.dic
 - java.dic
 - javascript.dic
 - lua.dic
 - make.dic
 - masm.dic
 - node.dic
 - php.dic
 - plaintex.dic
 - python.dic
 - ruby.dic
 - scss.dic
 - sh.dic@	 --> zsh.dic
 - snippet.dic
 - tex.dic
 - vim.dic
 - wiki.dic
 - xhtml.dic@	 --> html.dic
 - xslt.dic
 - zsh.dic

库中很大部分词库来源于 [https://github.com/Firef0x/vimfiles.git]()，感谢！


安装
----

**Vundle** 方式安装

在`_vimrc`或 /`.vimrc`中加入

	Bundle 'asins/vim-dict'

重启 VIM 后运行`:BundleInstall`就能完成安装了。

**常规** 方式安装

将 dict 目录移动到`$VIM/vimfiles`目录。

然后在你的`_vimrc`或 /`.vimrc`中加入以下内容

	autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
	autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
	autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
	autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

使用方法
---------

在输入模式下按`<ctrl-x>_<ctrl-k>`即可看到提示内容了


TODO
-----

  - javascript 要重新整理一份，目前缺少很多 EC 5.0 的内容


