export OUT_DIR_COMMON_BASE=~/works/projects/publics/android/out
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
ccache()
{
    echo prebuilts/misc/linux-x86/ccache/ccache -M 50G
    prebuilts/misc/linux-x86/ccache/ccache -M 50G
}

