# ====================== global functions ======================== #
source ${LOCAL_CONFIG_DIR}/env/color.sh
##! @brief : print the fatal log
##! @params: $@ => msg
##! @return: see return code list
m.log.f()
{
    echo -e "${FATAL_COLOR}$@${COLOR_NC}"
    return ${RET_RUNNING_OK}
}

##! @brief : print the warning log
##! @params: $@ => msg
##! @return: see return code list
m.log.w()
{
    echo -e "${WARNING_COLOR}$@${COLOR_NC}"
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.d()
{
	if [[ DEBUG_ON -eq DEBUG ]]; then
    	echo -e "${NOTICE_COLOR}$@${COLOR_NC}"
	fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.v()
{
    echo -e "$@"
    return ${RET_RUNNING_OK}
}

## import.file()
m.import()
{
    file=$1
    if [[ -f $file ]]; then
        m.log.d source $file
        source $file
    else
        m.log.f $file not exist!!!
    fi
}
## end
