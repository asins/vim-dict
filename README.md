VIM字典仓库
============

  - css.dic CSS 2.1规范
  - javascript.dic
  - node.dic Node.js
  - php.dic

安装
----

**Vundle** 方式安装

在`_vimrc`或/`.vimrc`中加入

	Bundle 'asins/vim-dict'

重启VIM后运行`:BundleInstall`就能完成安装了。

**常规** 方式安装

将dict目录移动到`$VIM/vimfiles`目录。

然后在你的`_vimrc`或/`.vimrc`中加入以下内容

	autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
	autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
	autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
	autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

使用方法
---------

在输入模式下按`<ctrl-x>_<ctrl-k>`即可看到提示内容了

TODO
-----

  - 加入CSS3的规范字典，但一直没找到一份满意的
  - javascript要重新整理一份，目前缺少很多EC 5.0的内容


