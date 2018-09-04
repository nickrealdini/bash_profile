# ALIAS
#alias composer="php /usr/local/bin/composer.phar"
alias composer='php composer.phar'
alias ll='ls -lhaGF' # -G Enable colorized output.
#alias apache restart='sudo apachectl restart'
#alias apache restart gracefully='sudo apachectl graceful'
#alias apache stop='sudo apachectl -k stop'
alias get-composer='curl -sS https://getcomposer.org/installer | php'
#alias gp-to-master='git push origin HEAD:refs/for/master'
alias gits='git status'
alias gitb='git branch'
alias gitco='git checkout'
alias gitlns='git log --name-status'
alias addkey='eval $(ssh-agent) && ssh-add ~/.ssh/id_rsa'
#alias gitr='git reset --soft "HEAD^"'
alias gittree='git log --pretty=oneline --abbrev-commit --graph --decorate --all'
alias gam='git add -A && git commit --amend'
alias gfc='git fetch origin && git checkout origin/master -b'
alias proj='cd ~/Projects'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles TRUE &&
	killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles FALSE
killall Finder'
alias clear-cache='rm -r ~/upcast-technology/cache/* && echo "executed: rm -r ~/upcast-technology/cache/*"'
alias xphp="php -d xdebug.profiler_enable=On -d xdebug.profiler_output_dir=."
#alias php-start="sudo php -S localhost:80 -t ~/upcast-technology/web"
alias php-start="sudo php -S nik.upcasttechnology.com:80 -t ~/upcast-technology/web"
alias php-fpm-restart="brew services restart php54"
alias sos='ssh nrealdini@52.48.47.11'
alias flush-dns-cache='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed'
alias upserv='coffee ~/upcast-technology/nodejs/./async-batch --server --output --errors'
alias compare-campaign-groups="php symfony upcast:compare-campaign-groups"
alias compare-campaign="php symfony upcast:compare-campaigns"
alias compare-campaign-ads="php symfony upcast:compare-campaign-ads"
alias compare-campaign-groups="php symfony upcast:compare-campaign-groups"
alias compare-campaign="php symfony upcast:compare-campaigns"
alias compare-campaign-ads="php symfony upcast:compare-campaign-ads"
alias flush-dns-cache='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed'
alias brew-chown="sudo chown -R `whoami` /usr/local"
alias selenium-run="java -jar /usr/local/bin/selenium-server-standalone-2.49.1.jar"
#alias selenium-run="java -jar /usr/local/bin/selenium-server-standalone-2.48.2.jar"
alias selenium-run-chrome="java -jar /usr/local/bin/selenium-server-standalone-2.48.2.jar -Dwebdriver.chrome.driver=/opt/chromedriver"
alias vagrant-list="VBoxManage list runningvms"
#alias dcdown="echo 'running docker-compose -f docker-compose.dev.yml down -v' && docker-compose -f docker-compose.dev.yml down -v"
alias dcdown="echo 'running: docker-compose -f docker-compose.smoke.yml down -v' && docker-compose -f docker-compose.smoke.yml down -v"
#alias dcup="echo 'docker-compose -f docker-compose.dev.yml up -d' && docker-compose -f docker-compose.dev.yml up -d"
alias dcup="echo 'running: docker-compose -f docker-compose.smoke.yml up -d' && docker-compose -f docker-compose.smoke.yml up -d"
alias sqlniktest="/usr/local/bin/rlwrap /Users/nick.realdini/instantclient_12_2/sqlplus NICK_REALDINI/nick_realdini@SAXTEST12"
alias sqlnikdev="/usr/local/bin/rlwrap /Users/nick.realdini/instantclient_12_2/sqlplus NICK_REALDINI/NICK_REALDINI@SAXDEV12"
alias kapi="cd ~/Projects/synch-stack/synch-api"
alias kweb="cd ~/Projects/synch-stack/synch-web"
alias docker-stop-all="docker stop \$(docker ps -a -q)"
alias myipw="ipconfig getifaddr en0"
alias myip="ipconfig getifaddr en6"
alias composer="/usr/local/bin/composer"
alias gitcos="git submodule init && git submodule update"
alias git-stats="git-quick-stats"
alias tomcat="cd /Users/nick.realdini/Projects/saxdev/java/sax-parent/sax-war && mvn tomcat7:run -U"
