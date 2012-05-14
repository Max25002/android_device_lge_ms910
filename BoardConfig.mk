# inherit from the proprietary version
-include vendor/lge/ms910/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/ms910/include

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

## ARMv7 Processor rev 2 (v7l)
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := ms910
TARGET_BOARD_INFO_FILE := device/lge/ms910/board-info.txt

TARGET_USES_2G_VM_SPLIT := true

BOARD_KERNEL_CMDLINE := console=ttyMSM1 androidboot.hardware=bryce
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_PAGE_SIZE := 2048

#TARGET_KERNEL_CONFIG := plague_defconfig 
#TARGET_KERNEL_SOURCE := kernel/lge/ms910
TARGET_PREBUILT_KERNEL := device/lge/ms910/kernel

## Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1031798784
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_USES_MMCUTILS := true

# Filesystem
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_SDCARD_INTERNAL := true

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/ms910/recovery/recovery_kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/ms910/recovery/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true

# UMS
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_6_X
BOARD_WLAN_DEVICE           := bcm4329
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH     := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH      := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/proc/calibration"
WIFI_DRIVER_MODULE_NAME     := "bcm4329"

# Audio & Bluetooth
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# RIL
BOARD_PROVIDES_LIBRIL := true

# qcom
#BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
BOARD_USES_ADRENO_200 := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
BOARD_EGL_CFG := device/lge/ms910/prebuilt/lib/egl/egl.cfg

#ICS settings
DISABLE_DEXPREOPT := true
USE_OPENGL_RENDERER := false
BOARD_NO_PAGE_FLIPPING := true
COPYBIT_MSM7x30 := true
BUILD_OLD_LIBCAMERA:= true
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12 -DSURFACEFLINGER_FORCE_SCREEN_RELEASE
COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
TARGET_FORCE_CPU_UPLOAD := true
TARGET_USES_GENLOCK := true
#TARGET_QCOM_HDMI_OUT := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Camera
BOARD_CAMERA_USE_GETBUFFERINFO := true

# FM Radio
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Enable JIT
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
ENABLE_JSC_JIT := true

TARGET_BUILD_VARIANT := eng

TARGET_OTA_ASSERT_DEVICE := ms910,MS910,bryce,lge_bryce

# OFFLINE CHARGING
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'