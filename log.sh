# ====================== global variables ======================== #
# global var
export RIGHT="[✔] "
export ERROR="[✗] "
TAG=log
# end
# ====================== global functions ======================== #
##! @brief : print the fatal log
##! @params: $@ => msg
##! @return: see return code list
m.log.e()
{
    echo -e "E - $@"
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
    echo -e "W - $@"
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
        echo -e "D - $@"
        read -p "Press any Key to continue....."
    fi
    return ${RET_RUNNING_OK}
}

##! @brief : print the notice log
##! @params: $@ => msg
##! @return: see return code list
m.log.v()
{
    echo -e "V - $@"
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
