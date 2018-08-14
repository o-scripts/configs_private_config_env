# ====================== global variables ======================== #
# global var
export RIGHT="${COLOR_NC}[${BGREEN} ✔ ${COLOR_NC}]"
export ERROR="${COLOR_NC}[${BRED} ✗ ${COLOR_NC}]"
TAG=log
# end
# ====================== global functions ======================== #
##! @brief : print the fatal log
##! @params: $@ => msg
##! @return: see return code list
m.log.e()
{
    echo -e "${FATAL_COLOR}E${COLOR_NC} - ${FATAL_COLOR}$@${COLOR_NC}"
    if [ "$DEBUG_ON" = "$DEBUG" ]; then
        read -p "Press any Key to continue....."
    fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the warning log
##! @params: $@ => msg
##! @return: see return code list
m.log.w()
{
    echo -e "${WARNING_COLOR}W${COLOR_NC} - ${WARNING_COLOR}$@${COLOR_NC}"
    if [ "$DEBUG_ON" = "$DEBUG" ]; then
        read -p "Press any Key to continue....."
    fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.d()
{
	if [ "$DEBUG_ON" = "$DEBUG" ]; then
    	echo -e "${NOTICE_COLOR}D${COLOR_NC} - ${NOTICE_COLOR}$@${COLOR_NC}"
        read -p "Press any Key to continue....."
	fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.v()
{
    echo -e "${INFO_COLOR}V${COLOR_NC} - ${INFO_COLOR}$@${COLOR_NC}"
    # if [ "$DEBUG_ON" = "$DEBUG" ]; then
    #     read -p "Press any Key to continue....."
    # fi
    return ${RET_RUNNING_OK}
}

## import.file()
m.import()
{
    file=$1
    if [[ -f $file ]]; then
        m.log.d "m.import - ${BGREEN}$@${COLOR_NC}"
        source $file
        case $? in
            0)
                m.log.d ${RIGHT} "m.import: ${BGREEN}${file}${COLOR_NC} finished..."
                ;;
        esac
    else
        m.log.e ${ERROR} ${BRED}$file${COLOR_NC} not exist!!!
    fi
}
## end
