## Personal copy of the bash_rc config

**NOTE for MAC OS Users:**

OS X doesn't read .bashrc file on bash start. 
Instead, it reads the following files (in the following order):

/etc/profile  
~/.bash_profile  
~/.bash_login  
~/.profile  

In order to be able to source the .bash_* file, 
the following lines have been added to the .bash_profile:

	# Enable git bash prompts
	if [ -f ~/.bash_git ]; then
		source ~/.bash_git
	fi
	
	# Bash rc
	if [ -f ~/.bash_rc  ]; then
		source ~/.bash_rc
	fi
	
	# Alias definitions
	if [ -f ~/.bash_aliases ]; then
	    . ~/.bash_aliases
	fi
**Others to install

For mac (https://brew.sh/):

	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew install git

	brew install fortune

	brew install cowsay

	brew install lolcat
