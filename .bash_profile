export PATH="/usr/local/sbin:$PATH" # Homebrew's sbin
#export PATH="$PATH:~/.rvm/bin" # Add RVM to PATH for scripting
#export PATH="$PATH:~/instantclient_12_1" # Add SqlPlus to PATH
export PATH="$PATH:/usr/local/bin" # Custom 
export PATH="$PATH:~/.composer/vendor/bin"

#export NVM_DIR="/Users/`whoami`/.nvm"
#export TNS_ADMIN=~/instantclient_12_1
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ $machine = "Mac" ]; then
	unset MAILCHECK
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

