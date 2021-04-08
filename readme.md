安装vim-plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

https://github.com/junegunn/vim-plug/blob/master/plug.vim

安装插件的命令：`:PlugInstall`

必要插件：
https://www.cnblogs.com/standardzero/p/10744648.html
ale 使用clang检查时，需要安装clang：`sudo apt-get install clang`

git插件：vim-fugitive
文件树：nerdtree，使用F3切换出来
文件浏览（类等标签）：tagbar，需要依赖ctags，安装`sudo apt install ctags`
文件搜索插件：fzf.vim
文件模糊搜索：ctrlp.vim，操作：ctrl+p
语法检查：ale，需要clang与pylint支持代码检查
符号自动补全：delimitMate，用来补全括号和引号
注释：nerdcommenter，对代码进行注释和反注释，（单行注释<leader>cc,反注释<leader>cu，多行n<leader>cc）
代码补全：ultisnips, vim-snippets。对于vim8，可以使用coc.nvim
