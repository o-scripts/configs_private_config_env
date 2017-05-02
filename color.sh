
# commonly useful colors
##! Normal colors
case `uname` in
	'Darwin')
		PREFIX='\x1B'
		;;
	'Linux')
		PREFIX='\e'
		;;
esac
BLACK=${PREFIX}'[0;30m'        # Black
RED=${PREFIX}'[0;31m'          # Red
GREEN=${PREFIX}'[0;32m'        # Green
YELLOW=${PREFIX}'[0;33m'       # Yellow
BLUE=${PREFIX}'[0;34m'         # Blue
PURPLE=${PREFIX}'[0;35m'       # Purple
CYAN=${PREFIX}'[0;36m'         # Cyan
WHITE=${PREFIX}'[0;37m'        # White

# Bold colors
BBLACK=${PREFIX}'[1;30m'       # Black
BRED=${PREFIX}'[1;31m'         # Red
BGREEN=${PREFIX}'[1;32m'       # Green
BYELLOW=${PREFIX}'[1;33m'      # Yellow
BBLUE=${PREFIX}'[1;34m'        # Blue
BPURPLE=${PREFIX}'[1;35m'      # Purple
BCYAN=${PREFIX}'[1;36m'        # Cyan
BWHITE=${PREFIX}'[1;37m'       # White

# Background colors
ON_BLACK=${PREFIX}'[40m'       # Black
ON_RED=${PREFIX}'[41m'         # Red
ON_GREEN=${PREFIX}'[42m'       # Green
ON_YELLOW=${PREFIX}'[43m'      # Yellow
ON_BLUE=${PREFIX}'[44m'        # Blue
ON_PURPLE=${PREFIX}'[45m'      # Purple
ON_CYAN=${PREFIX}'[46m'        # Cyan
ON_WHITE=${PREFIX}'[47m'       # White

# Reset Color
COLOR_NC=${PREFIX}'[m'
# Color Configuration
FATAL_COLOR="${BWHITE}${ON_RED}"
WARNING_COLOR="${BWHITE}${ON_YELLOW}"
NOTICE_COLOR="${BWHITE}${ON_GREEN}"
INFO_COLOR="${BWHITE}${ON_BLACK}"

# return code list
RET_RUNNING_OK=0
RET_RUNNING_FAIL=1
RET_PARAMS_ERROR=2

