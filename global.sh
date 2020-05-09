#!/bin/bash
# Kernel arch
ARCH=`uname`
# end

# IP
sip()
{
	case `ifconfig | grep '192.168.1.2' | awk '{print $2}' | cut -d':' -f 2` in
	'192.168.1.2')
		unset NDK_HOME
		;;
	esac
}
# end

# self software
## cocos2dx
export COCOS2DX_HOME=${LOCAL_GIT_DIR}/cocos2d-x
## end

## matlab @2016.01.30
export MATLAB_HOME=${HOME}/works/tool-kit/publics/matlab_cur
## end

