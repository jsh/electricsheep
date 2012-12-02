# Where everything is

export JAVA_HOME=/usr/lib/jvm/java-6-sun/jre
PATH+=:~/Development/adt-bundle-linux-x86/eclipse
PATH+=:~/android-sdks/platform-tools:~/android-sdks/tools

# make builds faster
export USE_CCACHE=1
PARALLEL=-j4


# class-specific stuff
export aroot=/home/android/dev/TI_Android_GingerBread_2_3_4_AM335x_Sources
export aprod=$aroot/out/target/product/beaglebone
export adrv=$aroot/device/ti/beaglebone
alias cdr='cd $aroot'
alias cdp='cd $aprod'
alias cdd='cd $adrv'

# set up the build environment
source $aroot/build/envsetup.sh
MAKEARGS="TARGET_PRODUCT=beaglebone OMAPES=4.x $PARALLEL"
alias m='m $MAKEARGS'
alias mm='mm $MAKEARGS'
