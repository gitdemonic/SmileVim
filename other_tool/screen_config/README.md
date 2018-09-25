# Screen:
## Install and configuration
```
1. $ sudo apt-get install screen
2. cp .screen ~/
Note. Remember backup your .screen
```
## Status bar
```
Show network throughput for NCI interface
1. Install ifstat
   $ sudo apt-get install ifstat
2. Confirm interface name
   $ ifconifg
3. Set interface name on .screenrc(~: mean modify command)
   ...
   ~ backtick 3 0 0 /usr/bin/ifstat -i eth0 1
   ...

Show cpu usaged:
1. Download this 'thewtex/screen-cpu-mem'
   $ git clone https://github.com/thewtex/screen-cpu-mem.git ~/
2. Install g++:
   $ sudo apt-get install g++
3. $ cd ~/screen-cpu-mem
4. $ cmake .
5. $ make
6. $ sudo make install
7. Execution file will auto install to /usr/local/bin/
8. Settings .screenrc(it already add it at .screenrc):
   ...
   + backtick 2 0 0 /usr/local/bin/screen-cpu-usage
   ...

Show memory
1. copy screen-mem-usage to /usr/local/bin/
   $ sudo cp screen-mem-usage /usr/local/bin
2. Settings .screenrc(is already add it at .screenrc):
   ...
   + backtick 1 0 0 /usr/local/bin/screen-mem-usage
   ...
```

## Reference:
1. [cpu-mem-usage](https://github.com/thewtex/screen-cpu-mem)


