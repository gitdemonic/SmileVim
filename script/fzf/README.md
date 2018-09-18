# Install fzf step:
```
1. $ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf 
2. $ ~/.fzf/install
   All 'Yes'
```

# How to use these script
```
1. Remember modify permission to 'a+x':
   $ chmod a+x fzfp.sh  fzf_Vim_Open.sh  gitfile.sh

2. Thes script can dirctly execution, like it:
   $ fzf_Vim_Open.sh
   so we just alias it on ~/.bashrc, like it:
   // .bashrc
   ...
   + alias fv='~/.vim/script/fzf/fzf_Vim_Open.sh'
   + alias gl='/home/henry/.vim/script/fzf/gitfile.sh'
   ...

3. The gitfile.sh base on .git directory, when you use it your currently directory have '.git' folder.
   gl exampel:
   - gl .
   - gl filename.txt
   A. If you want to modify display format for git log --format, it have to modify git log --format optional command on gitfile.sh
   B. If you want to change fzf behivor, it have to modify fzf option on gitfile.sh for fzf command, e.g. preview, search condition...
   C. If you use gl on screen(linux 'screen'), "Ctrl+L" maybe can help you reflash your windows
```
