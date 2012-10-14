$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/motorola/triumph/triumph-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/triumph/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/motorola/triumph/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# Build hdmid
# include frameworks/base/cmds/hdmid/Android.mk

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_PACKAGES += \
    Gallery2 \
    SpareParts \
    Term \
    LatinIME \
    Mms \
    Music \
    Camera \
    gps.triumph \
    lights.triumph \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    overlay.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    audio_policy.msm7x30 \
    audio.primary.msm7x30 \
    audio.a2dp.default \
    libaudioutils \
    libtinyalsa

# QCOM OMX
PRODUCT_PACKAGES += \
    libcamera \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libdivxdrmdecrypt \
    liblasic \
    libOmxVdec \
    libOmxVenc \
    libOmxVidEnc \
    mm-vdec-omx-property-mgr \
    mm-vdec-omx-test \
    mm-venc-omx-test \
    mm-video-driver-test \
    mm-venc-omx-test720p \
    mm-video-encdrv-test \
    libomxaudio

# Camera
PRODUCT_PACKAGES += \
    camera.msm7x30

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Init files
PRODUCT_COPY_FILES += \
    device/motorola/triumph/init.triumph.rc:root/init.triumph.rc \
    device/motorola/triumph/ueventd.triumph.rc:root/ueventd.triumph.rc

# Vold
PRODUCT_COPY_FILES += \
    device/motorola/triumph/vold.fstab:system/etc/vold.fstab

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# init scripts
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/motorola/triumph/files/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh\
    device/motorola/triumph/files/etc/init.qcom.bt.sh:/system/etc/init.qcom.fm.sh \
    device/motorola/triumph/files/etc/init.qcom.sdio.sf6.sh:/system/etc/init.qcom.sdio.sf6.sh \
    device/motorola/triumph/files/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/motorola/triumph/files/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \
    device/motorola/triumph/files/etc/init.apn.sh:/system/etc/init.apn.sh \
    device/motorola/triumph/files/etc/telephony.sql:/system/etc/telephony.sql 

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

# Video firmware
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/motorola/triumph/files/etc/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/motorola/triumph/files/etc/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/motorola/triumph/files/etc/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/motorola/triumph/files/etc/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/motorola/triumph/files/etc/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/motorola/triumph/files/etc/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw

# Wifi
PRODUCT_COPY_FILES += \
    device/motorola/triumph/modules/libra.ko:/system/lib/modules/libra.ko \
    device/motorola/triumph/modules/librasdioif.ko:/system/lib/modules/librasdioif.ko \
    device/motorola/triumph/modules/libra_ftm.ko:/system/lib/modules/libra_ftm.ko \
    device/motorola/triumph/files/etc/firmware/wlan/qcom_fw.bin:/system/etc/firmware/wlan/qcom_fw.bin \
    device/motorola/triumph/files/etc/firmware/wlan/qcom_wapi_fw.bin:/system/etc/firmware/wlan/qcom_wapi_fw.bin \
    device/motorola/triumph/files/etc/firmware/wlan/qcom_wlan_nv.bin:/system/etc/firmware/wlan/qcom_wlan_nv.bin \
    device/motorola/triumph/files/etc/firmware/wlan/cfg.dat:/system/etc/firmware/wlan/cfg.dat \
    device/motorola/triumph/files/etc/firmware/wlan/qcom_cfg.ini:/system/etc/firmware/wlan/qcom_cfg.ini \
    device/motorola/triumph/files/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Hostapd
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/firmware/wlan/hostapd_default.conf:/system/etc/firmware/wlan/hostapd_default.conf \
    device/motorola/triumph/files/etc/init.d/08hostapd:/system/etc/init.d/08hostapd \

# GPS
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/loc_parameter.ini:system/etc/loc_parameter.ini \
    device/motorola/triumph/files/etc/gps.conf:/system/etc/gps.conf \
    device/motorola/triumph/files/etc/SuplRootCert:/system/etc/SuplRootCert

# APN
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/apns-conf.xml:system/etc/apns-conf.xml

# Touchscreen
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/usr/idc/bi041p.idc:/system/usr/idc/bi041p.idc

# Xml config
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/media_profiles.xml:system/etc/media_profiles.xml

# Modules
PRODUCT_COPY_FILES += \
    device/motorola/triumph/modules/cifs.ko:/system/lib/modules/cifs.ko

# Init.d task management
PRODUCT_COPY_FILES += \
    device/motorola/triumph/files/etc/init.d/100complete:/system/etc/init.d/100complete

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
