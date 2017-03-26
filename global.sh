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


# git root Ordner
export BRANCH_GIT=${HOME}/develop/branch.git
# end

# software root Ordner
export MSOFT=${MSHELL}/software
export SELFLIB=${MSHELL}/libs
# end

# ANDROID Einstellungen
## Java Einstellungen
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.
## // :$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
## end

## android Ordner
export ANDROID_DIR=${HOME}/android
## end

## SDK und NDK
export SDK_HOME=${ANDROID_DIR}/android-sdk
export NDK_HOME=${SDK_HOME}/ndk-bundle
## end
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
export COCOS2DX_HOME=${BRANCH_GIT}/cocos2d-x
## end

## eclipse
export ECLIPSE_HOME=${ANDROID_DIR}/eclipse
## end

## go language
export GOROOT=${MSOFT}/go
## end

## matlab @2016.01.30
export MATLAB_HOME=/usr/local/matlab/R2015b
## end
# end
