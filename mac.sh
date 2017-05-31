#!/bin/bash
export MAC_ROOT=${HOME}/shell/
#export PAGER=most

## brew
### Installing byobu dependency: coreutils
# PATH="/Users/zhanggd/develop/branch.git/works/tool-kit/publics/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# MANPATH="/Users/zhanggd/develop/branch.git/works/tool-kit/publics/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"
### Installing byobu dependency: gnu-sed
# PATH="/Users/zhanggd/develop/branch.git/works/tool-kit/publics/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# MANPATH="/Users/zhanggd/develop/branch.git/works/tool-kit/publics/homebrew/opt/gnu-sed/libexec/gnuman:$MANPATH"
## end

## Java Einstellungen
#export JRE_HOME=${JAVA_HOME}/jre
#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
#export JAVA_HOME=/usr/lib/jvm/java-6-sun
#export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64
#export JAVA_HOME=/usr/lib/jvm/openjdk-7-amd64
#export JAVA_HOME=/usr/lib/jvm/openjdk-7-amd64
#unset JAVA_HOME
## end

# PS1 config
export PS1=${PS_BCYAN}'[\u@\h: '${PS_BGREEN}'\w '${PS_BYELLOW}'➜ '${PS_BCYAN}'$(__git_ps1 " (${PS_BRED}%s${PS_BCYAN})")'${PS_BCYAN}'] $'${PS_COLOR_NC}' '
# '\[\e[36;1m\]\u@\h: \[\e[32;1m\]\w\[\e[36;1m\]\$ \[\e[0m\]'
# '[ \u@\h \W$(__git_ps1 " (%s)")]\$ '
# end

## docker for mac osx
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/zhanggd/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
## end

## for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000000
HISTFILESIZE=2000000000
HISTTIMEFORMAT="[%F %T] "
HISTCONTROL=ignoreboth
## end