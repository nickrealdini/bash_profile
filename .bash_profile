export PATH="/usr/local/sbin:$PATH" # Homebrew's sbin
export PATH="$PATH:~/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:~/instantclient_12_2" # Add SqlPlus to PATH
export PATH="$PATH:/usr/local/bin" # Custom 
export PATH="$PATH:~/.composer/vendor/bin"

export NVM_DIR="/Users/`whoami`/.nvm"
export TNS_ADMIN=~/instantclient_12_2
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
export ORACLE_HOME="/Users/`whoami`/instantclient_12_2"
export ORACLE_PATH=$ORACLE_HOME
export SQLPATH=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME

# AWS
if [ -f ~/.bash_aws_custom ]; then
	source ~/.bash_aws_custom
fi

# Enable git bash prompts
if [ -f ~/.bash_git ]; then
	source ~/.bash_git
fi

# Bash rc
if [ -f ~/.bash_rc  ]; then
	source ~/.bash_rc
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function randomsay() 
{
    cows=(`cowsay -l | grep -v '/'`)
    cow=${cows[$RANDOM % ${#cows[@]} ]}
    fortune | cowsay -f $cow "$@" | lolcat
}

randomsay

# Custom Project Folder
if [ -d ~/Projects/saxdev ]; then
 cd ~/Projects/saxdev
fi
