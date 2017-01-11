# How to install
```
$ git clone https://github.com/zhiding/vim.git ~/vim
$ cd ~
$ unlink ~/.vimrc; ln -s ~/vim/vimrc ~/.vimrc
$ unlink ~/.vim; ln -s ~/vim ~/.vim
$ mkdir ~/vim/bundle
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/vim/bundle/Vundle.vim
$ git clone https://github.com/w0ng/vim-hybrid.git ~/vim/vim-hybrid
$ ln -s  ~/vim/vim-hybrid/colors ~/vim/colors
```
Launch `vim` and run `:PluginInstall`
