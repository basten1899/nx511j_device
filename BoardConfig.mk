USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/nx511j/BoardConfigVendor.mk


TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

TARGET_BOOTLOADER_BOARD_NAME := nx511j


# kernel
BOARD_KERNEL_CMDLINE := console=null androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_PAGESIZE    := 2048
#BOARD_KERNEL_TAGS_OFFSET := 0x00000100
#BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_MKBOOTIMG_ARGS := --dt device/zte/nx511j/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13258652672 # 13258669056 - 16384
BOARD_FLASH_BLOCK_SIZE := 131072

#DEVICE_RESOLUTION := 1080x1920


#TARGET_RECOVERY_FSTAB := device/zte/nx511j/fstab.qcom #$(DEVICE_PATH)/rootdir/fstab.qcom
#TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_HAS_NO_SELECT_BUTTON := true
# Recovery
TARGET_PREBUILT_KERNEL := device/zte/nx511j/kernel
TARGET_RECOVERY_FSTAB := device/zte/nx511j/fstab.qcom
DEVICE_RESOLUTION := 1080x1920
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_USERIMAGES_USE_EXT4 := true
#INSTALLED_DTIMAGE_TARGET := $(DEVICE_PATH)/dt.img
# twrp
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

