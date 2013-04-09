# Copyright (C) 2009 The Android Open Source Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := false

# Call headers from msm-3.0: needed to build libs in hardware/qcom/display
TARGET_SPECIFIC_HEADER_PATH := device/motorola/triumph/include

# inherit from the proprietary version
-include vendor/motorola/triumph/BoardConfigVendor.mk

# MSM7x30
TARGET_USES_2G_VM_SPLIT := true
TARGET_BOOTLOADER_BOARD_NAME := triumph
TARGET_OTA_ASSERT_DEVICE := triumph,WX435,fb0
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Neon stuff
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A_BUG := true
ARCH_ARM_HAVE_NEON := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Set insecure for root access
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/motorola/triumph/releasetools/triumph_img_from_target_files
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/motorola/triumph/releasetools/triumph_ota_from_target_files

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_USES_QCOM_LPA := true
COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA

# Graphics
BOARD_USES_ADRENO_200 := true
USE_GENLOCK := true
BOARD_EGL_CFG := device/motorola/triumph/egl.cfg
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS      := false
BOARD_NO_RGBX_8888 := true
TARGET_USES_OVERLAY := true
COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS -DREFRESH_RATE=60
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_QCOM_HDMI_OUT := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

# HDMI
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/libra.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_PRE_LOADER := "qcom_sdio_init"
WIFI_POST_UNLOADER := "qcom_sdio_deinit"
BOARD_WEXT_NO_COMBO_SCAN := true
WPA_BUILD_SUPPLICANT := true

# Camera
#BOARD_USE_CAF_LIBCAMERA_GB_REL := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_CAMERA_USE_ENCODEDATA := true
BOARD_USES_HTC_CAMERA := true
BOARD_USE_CAF_LIBCAMERA := true
#BOARD_CAMERA_LIBRARIES := libcamera
#TARGET_LEGACY_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT

# GPS Defines
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := triumph
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
BOARD_VENDOR_QCOM_GPS_NEEDS_LNA := true
BOARD_VENDOR_QCOM_GPS_HAS_BROKEN_XTRA := true
BOARD_GPS_NEEDS_XTRA := true
BOARD_GPS_LIBRARIES := libcommondefs\
  libloc \
  libloc_api \
  libloc_ext \
  libloc-rpc

# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_MASS_STORAGE_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# Recovery
#TARGET_PREBUILT_RECOVERY_KERNEL := device/motorola/triumph/recovery_kernel
TARGET_RECOVERY_INITRC := device/motorola/triumph/recovery/init.recovery.triumph.rc
TARGET_RECOVERY_FSTAB := device/motorola/triumph/recovery.fstab
BOARD_HDPI_RECOVERY := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/motorola/triumph/recovery/default_recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/motorola/triumph/recovery/minui/graphics.c

# Filesystem
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p7
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p11
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true

#Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=triumph
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BUILD_KERNEL := true
TARGET_KERNEL_CONFIG := BSydz-ICS_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/triumph

#File System
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 260046848
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1191182336
BOARD_FLASH_BLOCK_SIZE := 262144

