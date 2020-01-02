#!/bin/bash
# Kernel arch
ARCH=`uname`
# end

# terminal color config
export CL_RED="\033[31m";
export CL_GRN="\033[32m";
export CL_YLW="\033[33m";
export CL_BLU="\033[34m";
export CL_MAG="\033[35m";
export CL_CYN="\033[36m";
export CL_RST="\033[0m";
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

## eclipse
export ECLIPSE_HOME=${ANDROID_DIR}/eclipse
## end

## matlab @2016.01.30
export MATLAB_HOME=${HOME}/works/tool-kit/publics/matlab_cur
## end

## zephyr config
#export ZEPHYR_BASE=${LOCAL_WORKS_DIR}/works/mnt/pro/my-git/zephyr-sdk-ng
export ZEPHYR_TOOLCHAIN_VARIANT=zephyr
export ZEPHYR_SDK_INSTALL_DIR=${LOCAL_WORKS_DIR}/works/mnt/pro/my-git/zephyr-sdk-ng
## end
# end
