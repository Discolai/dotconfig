# Dotfile configuration repo

## Cloning
Clone the repo as a bare repository into your home directory with the following commands:

- $```git clone --bare git@github.com:Discolai/dotconfig.git $HOME/.cfg```
- $```alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'```
- $```config checkout```

The last command might produce an error stating that a number of working tree files will be overwritten. Back them up or delete them and run the last command again. 

Load the new configuration by relaunching the terminal or running the following command: $```. ~/.bashrc```
