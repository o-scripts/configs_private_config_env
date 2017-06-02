# ====================== global functions ======================== #
##! @brief : print the fatal log
##! @params: $@ => msg
##! @return: see return code list
m.log.e()
{
    if [ "$DEBUG_ON" = "$DEBUG" ]; then
        echo -e "${FATAL_COLOR}$@${COLOR_NC}"
    else
        echo -e "${FATAL_COLOR}$@${COLOR_NC}"
    fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the warning log
##! @params: $@ => msg
##! @return: see return code list
m.log.w()
{
    if [ "$DEBUG_ON" = "$DEBUG" ]; then
        echo -e "${WARNING_COLOR}$@${COLOR_NC}"
    fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.d()
{
	if [ "$DEBUG_ON" = "$DEBUG" ]; then
    	echo -e "${NOTICE_COLOR}$@${COLOR_NC}"
	fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.v()
{
    echo -e "${INFO_COLOR}$@${COLOR_NC}"
    return ${RET_RUNNING_OK}
}

## import.file()
m.import()
{
    file=$1
    if [[ -f $file ]]; then
        m.log.d source $file${COLOR_NC} [${BRED}✔︎${COLOR_NC}]
        source $file
    else
        m.log.w $file not exist!!!
    fi
}
## end
