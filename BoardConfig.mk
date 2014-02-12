# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

#added
#TARGET_ARCH:= set to arm for almost all current Android devices.
TARGET_ARCH := arm

#BOARD_KERNEL_CMDLINE:= not all devices pass boot parameters however if your device does this must be filled out properly in order to boot successfully.
#BOARD_KERNEL_CMDLINE :=

#BOARD_KERNEL_PAGESIZE:= the pagesize of the stock boot.img and must be set properly in order to boot. Typical values for this are 2048 and 4096 and this information can be extracted from the stock kernel.

#BOARD_BOOTIMAGE_PARTITION_SIZE:= the number of bytes allocated to the kernel image partition.

#BOARD_RECOVERYIMAGE_PARTITION_SIZE:= the number of bytes allocated to the recovery image partition.

#BOARD_SYSTEMIMAGE_PARTITION_SIZE:= the number of bytes allocated to the Android system filesystem partition.
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 268435456
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16777216

#BOARD_USERDATAIMAGE_PARTITION_SIZE:= the number of bytes allocated to the Android data filesystem partition.
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912

#BOARD_HAS_NO_SELECT_BUTTON: (optional), use this if your device needs to use its Power button to confirm selections in recovery.
#BOARD_MKBOOTIMG_ARGS: (optional), use these to force a specific address for the ramdisk. This is usually needed on larger partitions in order for the ramdisk to be loaded properly where it's expected to exist. This value can be obtained from the stock kernel. 

#end added

#Video Devices
#BOARD_SECOND_CAMERA_DEVICE := /dev/video2

# Kernel Config
#TARGET_KERNEL_CONFIG := cyanogenmod_galaxysbmtd_defconfig

# FM Radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
#BOARD_FM_DEVICE := si4709

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/galaxysbmtd/bluetooth

# Recovery
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxysbmtd/recovery/recovery_keys.c

#TARGET_OTA_ASSERT_DEVICE := galaxysb,galaxysbmtd,GT-I9000B

# Import the aries-common BoardConfigCommon.mk
#include device/samsung/aries-common/BoardConfigCommon.mk
