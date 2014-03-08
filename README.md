android_device_ti_beagleboneblack
=================================

C3E2 Final Project

Work in progress.

Note: integrating kernel source seems to modify the source code in my experience; BACK THIS UP.

If integrating kernel source into build process (assuming you're in the cm source directory):

$ mkdir -p kernel/ti/
$ cd kernel/ti

$ ln -s home/{user}/linux-dev/KERNEL beagleboneblack

This links up the kernel source code.

In BoardConfig.mk, uncomment/set the following:

# Kernel Config
TARGET_NO_KERNEL := false
TARGET_KERNEL_CONFIG := beagleboneblack_defconfig #configuration file for the BBB filename in linux-dev/KERNEL/arch/arm/config

If you do not have a kernel configuration file for BBB, do the following:

$ cd $ home/{user}/linux-dev/KERNEL
$ make menuconfig

After you're satisified with your configuration:

$ cp .config /arch/arm/config/beagleboneblack_defconfig


If using prebuilt kernel, comment/set the following lines:
# Kernel Config
TARGET_PREBUILT_KERNEL := device/ti/beagleboneblack/zImage #specify path for prebuilt kernel
TARGET_NO_KERNEL := false
#TARGET_KERNEL_CONFIG := beagleboneblack_defconfig, configuration file for the BBB filename in linux-dev/KERNEL/arch/arm/config
