#!/bin/bash
# development einstellungen
## value the varables
export PATH=${SDK_HOME}/tools:${SDK_HOME}/platform-tools:${SDK_HOME}/build-tools/current:$PATH
## eclipse envalue
export PATH=${ECLIPSE_HOME}:/sbin:/usr/sbin:$PATH
export PATH=/opt/qt5/bin:$PATH
export PATH=${MSHELL}/run:${MSHELL}/bin:$PATH
## end

## Tizen SDK configuration
## This is generated by Tizen SDK. Please do not modify by yourself.
## Set sdb environment path
export PATH=${HOME}/tizen/tizen-sdk/tools:${PATH}
## end

## modify @2014.06.11 for tool-kit project modules
export PATH=${MSHELL}/tool-kit/bin:$PATH
## end

## modify @2014.09.04 for go language
export PATH=${GOROOT}/bin:$PATH
## end

## modify @2016.01.30 for matlab
export PATH=${MATLAB_HOME}/bin:${PATH}
## end
# end

# homebrew software envalue
case ${ARCH} in
	'Darwin')
		export PATH=${MSOFT}/homebrew/bin:${PATH}
		export PATH=${MSOFT}/homebrew/sbin:${PATH}
		## for macports command path
		export PATH=/opt/local/bin:$PATH
		;;
	'Linux')
		export PATH=${MSOFT}/pycharm-current/bin:${PATH}
		#export PATH=${MSHELL}/bin/git/bin:${PATH}
		export PATH=${NDK_HOME}:$PATH
		;;
esac
# end