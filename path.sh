#!/bin/bash
# development einstellungen
## value the varables
## eclipse envalue
#export PATH=${ECLIPSE_HOME}:/sbin:/usr/sbin:$PATH
#export PATH=${MSHELL}/run:${MSHELL}/bin:$PATH
## end

## works/bin
export PATH=${LOCAL_WORKS_DIR}/bin:${PATH}
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
        ## for works/bin self define bin
        export PATH=${LOCAL_WORKS_DIR}/bin:${PATH}
        ## laraval
        export PATH=$HOME/.composer/vendor/bin:${PATH}
		;;
	'Linux')
		;;
esac
# end
