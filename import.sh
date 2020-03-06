#!/bin/bash

ARCH=`uname`

# some global function, and variables
# m.import ${LOCAL_CONFIG_DIR}/env/settings.sh
g.import ${LOCAL_CONFIG_DIR}/env/color.sh
g.import ${LOCAL_CONFIG_DIR}/env/code.sh
g.import ${LOCAL_CONFIG_DIR}/env/log.sh
# end

# unterscheidliche Einstellungen
m.import ${LOCAL_CONFIG_DIR}/env/global.sh
m.import ${LOCAL_CONFIG_DIR}/env/private.sh
case ${ARCH} in
    'Linux'|'linux'|'LINUX')
        m.import ${LOCAL_CONFIG_DIR}/env/linux.sh
        ;;
    'Darwin'|'darwin'|'DARWIN')
        m.import ${LOCAL_CONFIG_DIR}/env/mac.sh
        ;;
esac
m.import ${LOCAL_CONFIG_DIR}/env/android.sh
m.import ${LOCAL_CONFIG_DIR}/env/flutter.sh
m.import ${LOCAL_CONFIG_DIR}/env/anaconda.sh
m.import ${LOCAL_CONFIG_DIR}/env/path.sh
m.import ${LOCAL_CONFIG_DIR}/env/docker.sh
m.import ${LOCAL_CONFIG_DIR}/env/zephyr.sh
# end
