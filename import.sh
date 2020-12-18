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

# setting different with os
case ${ARCH} in
    'Linux'|'linux'|'LINUX')
        m.import ${LOCAL_CONFIG_DIR}/env/linux.sh
        ;;
    'Darwin'|'darwin'|'DARWIN')
        m.import ${LOCAL_CONFIG_DIR}/env/mac.sh
        ;;
esac

# submodules
for i in $(ls ${LOCAL_CONFIG_DIR}/env/modules);
do
    m.import ${LOCAL_CONFIG_DIR}/env/modules/${i}
done
# end

m.import ${LOCAL_CONFIG_DIR}/env/path.sh

