# VIM 字典仓库

包含以下语言词库：

 - c.dic
 - context.dic
 - cpp.dic@ --> c.dic
 - cs.dic
 - cmake.dic
 - css.dic
 - dot.dic
 - erlang.dic
 - go.dic
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
 - rust.dic
 - scss.dic
 - sh.dic@ --> zsh.dic
 - snippet.dic
 - tex.dic
 - vim.dic
 - wiki.dic
 - xhtml.dic@ --> html.dic
 - xslt.dic
 - zsh.dic

库中很大部分词库来源于 <https://github.com/Firef0x/vimfiles.git>，感谢！
**Update 2020-03-17:** 从<https://github.com/jayli/vim-dictionary>中同步了字典，感谢！

## 安装

**vim-plug** 方式安装

在`_vimrc`或 /`.vimrc`中加入

	Plug 'asins/vim-dict'

重启 VIM 后运行`:PlugInstall`就能完成安装了。`Vundle`等插件的使用方式也是差不多的，不一一写了。

**常规** 方式安装

将 dict 目录移动到`$VIM/vimfiles`目录。

~~然后在你的`_vimrc`或 /`.vimrc`中加入以下内容~~，已集成自动载入对应 fileType 类型的字典文件功能，无需在`.vimrc`中设置。


## 使用方法

在输入模式下按`<ctrl-x>_<ctrl-k>`即可看到提示内容。

## 配置

有些时候提示并不是独立一种语言，比如`html`文件一般会伴随着`js`、`css`代码，新支持在_vimrc 文件中添加`g:vim_dict_config`设置，用于给特定格式指定伴随字典，格式如：

```vim
let g:vim_dict_config = {
\ 'html': ['css', 'javascript'],
\ 'javascript': ['jsx'],
\}
```
插件默认对 `html` 格式文件关联 `css`、`javascript` 两个字典，当然你也可以覆盖默认配置。




