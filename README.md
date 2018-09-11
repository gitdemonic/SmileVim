# SmileVim
0. Backup your ~/.vim if you want to use all configuration for VIM editor, 
1. Download SmileVim and override ~/.vim
   a. $ git clone https://github.com/gitdemonic/SmileVim.git ~/
   b. $ mv ~/SmileVim ~/.vim
   c. Install Vundle manage vim plugin(Refere to https://github.com/VundleVim/Vundle.vim)
      $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   d. $ vim +PluginInstall
2. (Optional) Install ctag and cscope:
   $ apt-get install  exuberant-ctags  cscope
3. Install Plugin: add your plugin in vimrc
4. Install Plugin
   $ vim +PluginInstall
5. Change colors colorscheme(e.g. tokyo-metro.vim)
   $ cd ~/.vim/
   $ git clone https://github.com/koirand/tokyo-metro.vim.git
   $ cp -r tokyo-metro.vim/autoload ~/.vim/
   $ cp -r tokyo-metro.vim/colors ~/.vim/
   $ cp -r tokyo-metro.vim/src ~/.vim/

Refer website:
1. vim colors: http://vimcolors.com
2. vim editor plugin: https://www.vim.org/scripts/script_search_results.php?keywords=&script_type=color+scheme&order_by=creation_date&direction=descending&search=search

