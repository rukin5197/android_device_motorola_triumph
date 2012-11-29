#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device

$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/triumph/triumph-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/triumph/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# Common 7x30 firmware
PRODUCT_COPY_FILES += \
    device/motorola/triumph/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/motorola/triumph/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/motorola/triumph/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/motorola/triumph/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/motorola/triumph/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/motorola/triumph/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/motorola/triumph/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/motorola/triumph/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/motorola/triumph/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# Keychars
PRODUCT_COPY_FILES += \
    device/motorola/triumph/keychars/fih_headsethook.kcm.bin:system/usr/keychars/fih_headsethook.kcm.bin \
    device/motorola/triumph/keychars/fih_ringswitch.kcm.bin:system/usr/keychars/fih_ringswitch.kcm.bin \
    device/motorola/triumph/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/motorola/triumph/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/motorola/triumph/keychars/sf6_kybd.kcm.bin:system/usr/keychars/sf6_kybd.kcm.bin \
    device/motorola/triumph/keychars/sf8_kybd.kcm.bin:system/usr/keychars/sf8_kybd.kcm.bin \
    device/motorola/triumph/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/motorola/triumph/keychars/surf_keypad_qwerty.kcm.bin:system/usr/keychars/surf_keypad_qwerty.kcm.bin \
    device/motorola/triumph/keychars/surf_keypad_numeric.kcm.bin:system/usr/keychars/surf_keypad_numeric.kcm.bin

# Keylayouts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/keylayout/fih_headsethook.kl:system/usr/keylayout/fih_headsethook.kl \
    device/motorola/triumph/keylayout/fih_ringswitch.kl:system/usr/keylayout/fih_ringswitch.kl \
    device/motorola/triumph/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/motorola/triumph/keylayout/bi041p.kl:system/usr/keylayout/bi041p.kl \
    device/motorola/triumph/keylayout/fbx_kybd.kl:system/usr/keylayout/fbx_kybd.kl \
    device/motorola/triumph/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/motorola/triumph/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/motorola/triumph/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/motorola/triumph/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl

# Triumph Prebuilt Files
PRODUCT_COPY_FILES += \
    device/motorola/triumph/prebuilt/08hostapd:/system/etc/init.d/08hostapd \
    device/motorola/triumph/prebuilt/100complete:/system/etc/init.d/100complete \
    device/motorola/triumph/prebuilt/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/motorola/triumph/prebuilt/gps.conf:/system/etc/gps.conf \
    device/motorola/triumph/prebuilt/SuplRootCert:/system/etc/SuplRootCert \
    device/motorola/triumph/prebuilt/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/triumph/prebuilt/bi041p.idc:/system/usr/idc/bi041p.idc \
    device/motorola/triumph/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/motorola/triumph/prebuilt/audio_policy.conf:system/etc/audio_policy.conf \
    device/motorola/triumph/prebuilt/media_codecs.xml:/system/etc/media_codecs.xml

# Triumph init scripts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/prebuilt/init.triumph.usb.rc:root/init.triumph.usb.rc \
    device/motorola/triumph/prebuilt/init.triumph.rc:root/init.triumph.rc \
    device/motorola/triumph/prebuilt/ueventd.triumph.rc:root/ueventd.triumph.rc \
    device/motorola/triumph/prebuilt/vold.fstab:system/etc/vold.fstab \
    device/motorola/triumph/prebuilt/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/motorola/triumph/prebuilt/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh\
    device/motorola/triumph/prebuilt/init.qcom.bt.sh:/system/etc/init.qcom.fm.sh \
    device/motorola/triumph/prebuilt/init.qcom.sdio.sf6.sh:/system/etc/init.qcom.sdio.sf6.sh \
    device/motorola/triumph/prebuilt/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/motorola/triumph/prebuilt/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/motorola/triumph/prebuilt/init.apn.sh:/system/etc/init.apn.sh \
    device/motorola/triumph/prebuilt/telephony.sql:/system/etc/telephony.sql 

# Wifi/Modules
PRODUCT_COPY_FILES += \
    device/motorola/triumph/modules/libra.ko:/system/lib/modules/libra.ko \
    device/motorola/triumph/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    device/motorola/triumph/modules/libra_ftm.ko:/system/lib/modules/libra_ftm.ko \
    device/motorola/triumph/modules/cifs.ko:/system/lib/modules/cifs.ko \
    device/motorola/triumph/modules/tun.ko:/system/lib/modules/tun.ko \
    device/motorola/triumph/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/motorola/triumph/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/motorola/triumph/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/motorola/triumph/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/motorola/triumph/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
    device/motorola/triumph/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/motorola/triumph/firmware/wlan/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Sensors, GPS, Lights
PRODUCT_PACKAGES += \
    gps.triumph \
    lights.triumph \
    sensors.triumph

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    libaudioutils

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# QCOM OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libOmxCore \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    Torch

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x30 \
    camtest \
    libcamera2

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Perfomance tweaks and misc
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.heapsize=48m \
    ro.sf.lcd_density=240 \
    ro.compcache.default=0

# Properties taken from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-motorola \
    ro.com.google.clientidbase.yt=android-motorola \
    ro.com.google.clientidbase.am=android-motorola \
    ro.com.google.clientidbase.ms=android-motorola \
    ro.com.google.clientidbase.gmm=android-motorola \
    ro.telephony.ril.v3=datacall,signalstrength

# Set region
PRODUCT_DEFAULT_LANGUAGE := en_US
PRODUCT_DEFAULT_REGION := US

# High-density art, but English locale
PRODUCT_LOCALES += en_US hdpi
PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := motorola_triumph
PRODUCT_DEVICE := triumph
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := WX435
PRODUCT_MANUFACTURER := Motorola
