#!/bin/bash
## setting for pycharm cannot use ibus
export IBUS_ENABLE_SYNC_MODE=1

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
case `grep -i name /proc/$$/status | awk '{print $2}'` in
    'bash')
        # export PS1="${PS_BCYAN}[\u@\h:${PS_BGREEN}\w${PS_BCYAN}(${PS_BRED}$(m.git)${PS_BCYAN})]\$ ${PS_COLOR_NC}"
        export PS1='\[\e[36;1m\][\u@\h:\[\e[32;1m\]\w\[\e[36;1m\](\[\e[31;1m\]$(m.git)\[\e[36;1m\])]$ \[\e[0m\]'
        # echo 'this is /bin/bash'
        unset HISTSIZE
        unset HISTFILESIZE
        export HISTSIZE=100000000
        export HISTFILESIZE=200000000
        export HISTTIMEFORMAT='[%F %T] '
        ## ignore 'space + command'
        export HISTCONTROL=ignorespace
        ## ROS config
        #m.import /opt/ros/kinetic/setup.bash
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

# rust
m.import ${HOME}/.cargo/env
export PATH=$HOME/.cargo/bin:${PATH}
# end

## opencv config
LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib
## end