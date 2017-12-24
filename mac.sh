#!/bin/bash
export MAC_ROOT=${HOME}/shell/
#export PAGER=most

## brew
## Installing byobu dependency: coreutils
PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/coreutils/libexec/gnuman:$MANPATH"
## Installing byobu dependency: gnu-sed
PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/gnu-sed/libexec/gnuman:$MANPATH"
## libxml2
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/libxml2/bin:$PATH"
## apr
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/apr/bin:$PATH"
## ccache
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/ccache/libexec:$PATH"
## curl
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/curl/bin:$PATH"
## e2fsprogs
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/e2fsprogs/bin:$PATH"
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/e2fsprogs/sbin:$PATH"
## findutils
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/findutils/libexec/gnubin:$PATH"
export MANPATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/findutils/libexec/gnuman:$MANPATH"
## flex
export PATH="${WORK_BASE}/tool-kit/publics/homebrew/opt/flex/bin:$PATH"
## docbook
export XML_CATALOG_FILES="${WORK_BASE}/tool-kit/publics/homebrew/etc/xml/catalog"
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
export PS1=${PS_BCYAN}'[\u@\h: '${PS_BGREEN}'\w '${PS_BYELLOW}'➜ '${PS_BCYAN}'$(__git_ps1 " (${PS_BRED}%s${PS_BCYAN})")'${PS_BCYAN}']\n$ '${PS_COLOR_NC}
# '\[\e[36;1m\]\u@\h: \[\e[32;1m\]\w\[\e[36;1m\]\$ \[\e[0m\]'
# '[ \u@\h \W$(__git_ps1 " (%s)")]\$ '
# end

## for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
unset HISTSIZE
unset HISTFILESIZE
export HISTSIZE=1000000000
export HISTFILESIZE=2000000000
export HISTTIMEFORMAT="[%F %T] "
export HISTCONTROL=ignoreboth
## end
