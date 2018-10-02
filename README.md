# SmileVim
0. **Backup your ~/.vim if you want to use all configuration for VIM editor,**
1. Download SmileVim and override ~/.vim
   ```
   - $ git clone https://github.com/gitdemonic/SmileVim.git ~/
   - $ mv ~/SmileVim ~/.vim
   - Install Vundle manage vim plugin(Refere to https://github.com/VundleVim/Vundle.vim):
     $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   - $ vim +PluginInstall
   ```
   - Note: Remember replace SmileVim/vimrc to ~/.vimrc or you can remove ~/.vimrc if you wnat use ~/.vim/vimrc
2. (Optional) Install ctag and cscope:
   ```
   $ apt-get install  exuberant-ctags  cscope
   ```
3. Change colors colorscheme(e.g. [vim-pink-moon](https://github.com/sts10/vim-pink-moon))
   ```
   A. Install color scheme via Vundle, if color scheme is vim-pink-moon.
      You can add it to Plugin function on vimrc, like it:
      + Plugin 'sts10/vim-pink-moon'
      And then install this plugin via 'vim +PluginInstall'
   B. Set the color scheme to colorscheme on vimrc, like it:
      + colorscheme pink-moon
   ```

## Other script
1. [fvf](https://github.com/gitdemonic/SmileVim/tree/master/script/fzf) is powerful search tool, I upload some script for git log, find file, and search keywork,
I hope it can replace grep, find command

2. [Screen](https://github.com/gitdemonic/SmileVim/tree/master/other_tool/screen_config) is terminal tool, it can help you manager your terminal, I have some config can show detail message(cpu, memory, and network usage) on status bar and hotkey

3. [Hstr](https://github.com/gitdemonic/SmileVim/tree/master/other_tool/history_plugin) is command history manage, it can quick found out old command

## Reference:
1. [vim colors](http://vimcolors.com)
2. [vim editor plugin](https://www.vim.org/scripts/script_search_results.php?keywords=&script_type=color+scheme&order_by=creation_date&direction=descending&search=search)
3. [tokyo-metro](https://github.com/koirand/tokyo-metro.vim)
4. [vim-pink-moon](https://github.com/sts10/vim-pink-moon)

## To-Do
- [ ] How to install and use FZF
- [X] Plugin base config
- [ ] FZF in vim
- [X] Improve fzf_Vim_Open.sh: Back to fzf window when close vim
- [ ] Improve fzf_Vim_Open.sh: show last keyword
