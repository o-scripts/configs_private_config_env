#!/bin/bash

# brew software envalue
case ${ARCH} in
	'Darwin')
		export PATH=${HOME}/brew/bin:${PATH}
		export PATH=${HOME}/brew/sbin:${PATH}
		export PATH=/usr/local/bin:$PATH
		;;
esac
# end
