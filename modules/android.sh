export OUT_DIR_COMMON_BASE=~/works/projects/publics/android/out
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
ccache()
{
    echo prebuilts/misc/linux-x86/ccache/ccache -M 50G
    prebuilts/misc/linux-x86/ccache/ccache -M 50G
}

# android sdk目录，替换为你自己的即可
export ANDROID_HOME="${HOME}/Android/Sdk"
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/tools/bin
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:${ANDROID_HOME}/emulator
export PATH=${PATH}:${ANDROID_HOME}/build-tools/current

