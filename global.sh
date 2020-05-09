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

