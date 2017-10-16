#!/bin/bash
## setting for pycharm cannot use ibus
export IBUS_ENABLE_SYNC_MODE=1

## Java Einstellungen
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.
## // :$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
#export JAVA_HOME=/usr/lib/jvm/java-6-sun
export JAVA_HOME=/usr/lib/jvm/default-java
#export JAVA_HOME=/usr/lib/jvm/openjdk-7-amd64
## end

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
case `grep -i name /proc/$$/status | awk '{print $2}'` in
    'bash')
        export PS1='\[\e[36;1m\]\u@\h:\[\e[32;1m\]\w\[\e[36;1m\]\$ \[\e[0m\]'
        # echo 'this is /bin/bash'
        unset HISTSIZE
        unset HISTFILESIZE
        export HISTSIZE=100000000
        export HISTFILESIZE=200000000
        export HISTTIMEFORMAT='[%F %T] '
        ## ignore 'space + command'
        export HISTCONTROL=ignorespace
        ## ROS config
        m.import /opt/ros/kinetic/setup.bash
        ## end
        ;;
    'zsh')
        # echo 'this is /bin/zsh'
        # Uncomment the following line if you want to change the command execution time
        # stamp shown in the history command output.
        # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
        HIST_STAMPS="mm-dd-yyyy"
        ## ROS config
        m.import /opt/ros/kinetic/setup.zsh
        ## end
        ;;
esac
# end
