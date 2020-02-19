#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Boot animation
TARGET_BOOTANIMATION_SIZE := 1080p

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Properties
-include $(LOCAL_PATH)/device-props.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libtinyalsa

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Camera
PRODUCT_PACKAGES += \
    SnapdragonCamera2

# Device init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc

# Device Parts
PRODUCT_PACKAGES += \
    DeviceParts

# Display
PRODUCT_PACKAGES += \
    libtinyxml2

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc \
    $(LOCAL_PATH)/idc/uinput-goodix.idc:system/usr/idc/uinput-goodix.idc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/keylayout/uinput-goodix.kl:system/usr/keylayout/uinput-goodix.kl \
    $(LOCAL_PATH)/keylayout/sdm845-tavil-snd-card_Button_Jack.kl:system/usr/keylayout/sdm845-tavil-snd-card_Button_Jack.kl

# IFAA manager
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.xiaomi_sdm845

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0 \
    libandroid_net

# Power
PRODUCT_PACKAGES += \
    power.beryllium

# OMNI
PRODUCT_PACKAGES += \
    OmniDisplayManager

# QTI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# RCS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager \
    com.android.ims.rcsmanager.xml \
    RcsService \
    PresencePolling

# VNDK-SP
PRODUCT_PACKAGES += \
    vndk-sp

# WFD
PRODUCT_BOOT_JARS += \
    WfdCommon

# TWRP
PRODUCT_COPY_FILES += \
    device/xiaomi/beryllium/twrp/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
    device/xiaomi/beryllium/twrp/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    device/xiaomi/beryllium/twrp/recovery/root/ueventd.qcom.rc:recovery/root/ueventd.qcom.rc \
    device/xiaomi/beryllium/twrp/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/compatibility_matrix.xml:recovery/root/vendor/compatibility_matrix.xml \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/manifest.xml:recovery/root/vendor/manifest.xml \
    device/xiaomi/beryllium/twrp/recovery/root/nonplat_hwservice_contexts:recovery/root/nonplat_hwservice_contexts \
    device/xiaomi/beryllium/twrp/recovery/root/nonplat_service_contexts:recovery/root/nonplat_service_contexts \
    device/xiaomi/beryllium/twrp/recovery/root/plat_hwservice_contexts:recovery/root/plat_hwservice_contexts \
    device/xiaomi/beryllium/twrp/recovery/root/plat_service_contexts:recovery/root/plat_service_contexts \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/android.hardware.gatekeeper@1.0.so:recovery/root/sbin/android.hardware.gatekeeper@1.0.so \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti:recovery/root/sbin/android.hardware.gatekeeper@1.0-service-qti \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/android.hardware.keymaster@3.0-service-qti:recovery/root/sbin/android.hardware.keymaster@3.0-service-qti \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/android.hidl.base@1.0.so:recovery/root/sbin/android.hidl.base@1.0.so \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/libicuuc.so:recovery/root/sbin/libicuuc.so \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/libxml2.so:recovery/root/sbin/libxml2.so \
    device/xiaomi/beryllium/twrp/recovery/root/sbin/qseecomd:recovery/root/sbin/qseecomd \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libdiag.so:recovery/root/vendor/lib64/libdiag.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libdrmfs.so:recovery/root/vendor/lib64/libdrmfs.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libdrmtime.so:recovery/root/vendor/lib64/libdrmtime.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libGPreqcancel.so:recovery/root/vendor/lib64/libGPreqcancel.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libkeymasterdeviceutils.so:recovery/root/vendor/lib64/libkeymasterdeviceutils.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libkeymasterprovision.so:recovery/root/vendor/lib64/libkeymasterprovision.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libkeymasterutils.so:recovery/root/vendor/lib64/libkeymasterutils.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libqdutils.so:recovery/root/vendor/lib64/libqdutils.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libqisl.so:recovery/root/vendor/lib64/libqisl.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libQSEEComAPI.so:recovery/root/vendor/lib64/libQSEEComAPI.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libqservice.so:recovery/root/vendor/lib64/libqservice.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/librpmb.so:recovery/root/vendor/lib64/librpmb.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libsecureui.so:recovery/root/vendor/lib64/libsecureui.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libSecureUILib.so:recovery/root/vendor/lib64/libSecureUILib.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libsecureui_svcsock.so:recovery/root/vendor/lib64/libsecureui_svcsock.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libspcom.so:recovery/root/vendor/lib64/libspcom.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libspl.so:recovery/root/vendor/lib64/libspl.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libssd.so:recovery/root/vendor/lib64/libssd.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libStDrvInt.so:recovery/root/vendor/lib64/libStDrvInt.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/libtime_genoff.so:recovery/root/vendor/lib64/libtime_genoff.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/vendor.qti.hardware.tui_comm@1.0_vendor.so:recovery/root/vendor/lib64/vendor.qti.hardware.tui_comm@1.0_vendor.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:recovery/root/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    device/xiaomi/beryllium/twrp/recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:recovery/root/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so
