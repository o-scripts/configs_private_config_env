#!/bin/bash
# development einstellungen
## value the varables
## eclipse envalue
#export PATH=${ECLIPSE_HOME}:/sbin:/usr/sbin:$PATH
export PATH=/opt/qt5/bin:$PATH
#export PATH=${MSHELL}/run:${MSHELL}/bin:$PATH
## end

## modify @2014.06.11 for tool-kit project modules
export PATH=${MSHELL}/tool-kit/bin:$PATH
## end

## works/bin
export PATH=${LOCAL_WORKS_DIR}/bin:${PATH}
export PATH=${LOCAL_WORKS_DIR}/usr/bin:${PATH}
export PATH=${LOCAL_WORKS_DIR}/usr/local/bin:${PATH}
## end
# end

# homebrew software envalue
case ${ARCH} in
	'Darwin')
		export PATH=${LOCAL_WORKS_DIR}/tool-kit/publics/homebrew/bin:${PATH}
		export PATH=${LOCAL_WORKS_DIR}/tool-kit/publics/homebrew/sbin:${PATH}
        export PATH=${LOCAL_WORKS_DIR}/tool-kit/publics/homebrew/opt/apr/bin:${PATH}
        export PATH=${LOCAL_WORKS_DIR}/tool-kit/publics/homebrew/opt/openssl/bin:$PATH
		## for macports command path
		export PATH=/opt/local/bin:$PATH
		export PATH=${NDK_HOME}:$PATH
        ## for works/bin self define bin
        export PATH=${LOCAL_WORKS_DIR}/bin:${PATH}
        ## laraval
        export PATH=$HOME/.composer/vendor/bin:${PATH}
		;;
	'Linux')
		export PATH=${MSOFT}/pycharm-current/bin:${PATH}
		#export PATH=${MSHELL}/bin/git/bin:${PATH}
		export PATH=${NDK_HOME}:$PATH
		export PATH=/snap/bin:${PATH}
		# export PATH=${HOME}/anaconda3/bin:$PATH
		;;
esac
# end
