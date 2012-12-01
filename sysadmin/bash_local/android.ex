# Where everything is

JAVA_HOME=~/jdk1.6.0_37
JAVA6_HOME=~/jdk1.6.0_37
PATH+=:~/android-sdks/platform-tools:~/android-sdks/tools

# make builds faster
export USE_CCACHE=1
PARALLEL=-j4


# class-specific stuff
MAKEARGS="TARGET_PRODUCT=beaglebone OMAPES=4.x $PARALLEL"
export aroot=/home/android/dev/TI_Android_GingerBread_2_3_4_AM335x_Sources
export aprod=$aroot/out/target/product/beaglebone
export adrv=$aroot/device/ti/beaglebone
alias cdr='cd $aroot'
alias cdp='cd $aprod'
alias cdd='cd $adrv'

# set up the build environment
source $aroot/build/envsetup.sh
alias m='m $MAKEARGS'
alias mm='mm $MAKEARGS'
