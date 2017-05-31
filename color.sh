#!/bin/bash
# ========================================
# commonly useful colors
case `uname` in
	'Darwin')
		PREFIX='\x1B'
		;;
	'Linux')
		PREFIX='\e'
		;;
esac

##! Normal color
BLACK=${PREFIX}'[0;30m'        # Black
RED=${PREFIX}'[0;31m'          # Red
GREEN=${PREFIX}'[0;32m'        # Green
YELLOW=${PREFIX}'[0;33m'       # Yellow
BLUE=${PREFIX}'[0;34m'         # Blue
PURPLE=${PREFIX}'[0;35m'       # Purple
CYAN=${PREFIX}'[0;36m'         # Cyan
WHITE=${PREFIX}'[0;37m'        # White

## Bold colors
BBLACK=${PREFIX}'[1;30m'       # Black
BRED=${PREFIX}'[1;31m'         # Red
BGREEN=${PREFIX}'[1;32m'       # Green
BYELLOW=${PREFIX}'[1;33m'      # Yellow
BBLUE=${PREFIX}'[1;34m'        # Blue
BPURPLE=${PREFIX}'[1;35m'      # Purple
BCYAN=${PREFIX}'[1;36m'        # Cyan
BWHITE=${PREFIX}'[1;37m'       # White

## Background colors
ON_BLACK=${PREFIX}'[40m'       # Black
ON_RED=${PREFIX}'[41m'         # Red
ON_GREEN=${PREFIX}'[42m'       # Green
ON_YELLOW=${PREFIX}'[43m'      # Yellow
ON_BLUE=${PREFIX}'[44m'        # Blue
ON_PURPLE=${PREFIX}'[45m'      # Purple
ON_CYAN=${PREFIX}'[46m'        # Cyan
ON_WHITE=${PREFIX}'[47m'       # White

## Reset Color
COLOR_NC=${PREFIX}'[m'

## Color Configuration
FATAL_COLOR="${BWHITE}${ON_RED}"
WARNING_COLOR="${BWHITE}${ON_YELLOW}"
NOTICE_COLOR="${BWHITE}${ON_GREEN}"
INFO_COLOR="${BWHITE}${ON_BLACK}"

# return code list
RET_RUNNING_OK=0
RET_RUNNING_FAIL=1
RET_PARAMS_ERROR=2

# ========================================
# color for PS1
case `uname` in
	'Darwin')
		PS_PREFIX='\e'
		;;
esac
##! Normal color
PS_BLACK=${PS_PREFIX}'[30;0m'        # Black
PS_RED=${PS_PREFIX}'[31;0m'          # Red
PS_GREEN=${PS_PREFIX}'[32;0m'        # Green
PS_YELLOW=${PS_PREFIX}'[33;0m'       # Yellow
PS_BLUE=${PS_PREFIX}'[34;0m'         # Blue
PS_PURPLE=${PS_PREFIX}'[35;0m'       # Purple
PS_CYAN=${PS_PREFIX}'[36;0m'         # Cyan
PS_WHITE=${PS_PREFIX}'[37;0m'        # White

## Bold colors
PS_BBLACK=${PS_PREFIX}'[30;1m'       # Black
PS_BRED=${PS_PREFIX}'[31;1m'         # Red
PS_BGREEN=${PS_PREFIX}'[32;1m'       # Green
PS_BYELLOW=${PS_PREFIX}'[33;1m'      # Yellow
PS_BBLUE=${PS_PREFIX}'[34;1m'        # Blue
PS_BPURPLE=${PS_PREFIX}'[35;1m'      # Purple
PS_BCYAN=${PS_PREFIX}'[36;1m'        # Cyan
PS_BWHITE=${PS_PREFIX}'[37;1m'       # White

## Background colors
PS_ON_BLACK=${PS_PREFIX}'[40m'       # Black
PS_ON_RED=${PS_PREFIX}'[41m'         # Red
PS_ON_GREEN=${PS_PREFIX}'[42m'       # Green
PS_ON_YELLOW=${PS_PREFIX}'[43m'      # Yellow
PS_ON_BLUE=${PS_PREFIX}'[44m'        # Blue
PS_ON_PURPLE=${PS_PREFIX}'[45m'      # Purple
PS_ON_CYAN=${PS_PREFIX}'[46m'        # Cyan
PS_ON_WHITE=${PS_PREFIX}'[47m'       # White

## Reset Color
PS_COLOR_NC=${PS_PREFIX}'[0m'
