# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_DEVICE_DIRS += device/xiaomi/beryllium/twrp

# TWRP specific build flags
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_USE_TOOLBOX := true

PRODUCT_COPY_FILES += \
    device/xiaomi/beryllium/twrp/recovery/root/init.recovery.usb.rc:recovery/root/init.recovery.usb.rc
