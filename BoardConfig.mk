#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_VENDOR := xiaomi

BUILD_BROKEN_DUP_RULES := true

DEVICE_PATH := device/xiaomi/grus

# Set Vendor SPL to match platform
VENDOR_SECURITY_PATCH = $(PLATFORM_SECURITY_PATCH)

# Set boot SPL
BOOT_SECURITY_PATCH = $(PLATFORM_SECURITY_PATCH)

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_grus
TARGET_RECOVERY_DEVICE_MODULES := libinit_grus

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

# Second architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm710
TARGET_NO_BOOTLOADER := true

ALLOW_ADBD_ROOT := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

BOARD_KERNEL_SEPARATED_DTBO := true

# Assert
TARGET_OTA_ASSERT_DEVICE := grus

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3 swiotlb=4096 loop.max_part=16
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_KERNEL_ARCH := arm64

TARGET_KERNEL_CONFIG := grus_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/xiaomi/grus

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Platform
TARGET_BOARD_PLATFORM := sdm710
TARGET_BOARD_PLATFORM_GPU := qcom-adreno616

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
AUDIO_FEATURE_ENABLED_HIFI_AUDIO := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true
AUDIO_FEATURE_ENABLED_KEEP_ALIVE := true
AUDIO_FEATURE_ENABLED_DISPLAY_PORT := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := false
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := false
MM_AUDIO_ENABLED_FTM := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
BOARD_SUPPORTS_QAHW := false
BOARD_SUPPORTS_QSTHW_API := true
AUDIO_FEATURE_ENABLED_RAS := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
BOARD_SUPPORTS_SOUND_TRIGGER_ARM := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
#AUDIO_FEATURE_ENABLED_FFV := true
#AUDIO_FEATURE_ENABLED_KEEP_ALIVE_ARM_FFV := true
#AUDIO_FEATURE_ENABLED_DLKM := true
AUDIO_FEATURE_ENABLED_SVA_MULTI_STAGE := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_INSTANCE_ID := true
BOARD_SUPPORTS_SOUND_TRIGGER_CPU_AFFINITY_SET := true
BOARD_SUPPORTS_FFV_EC_THREAD_RT_PRIORITY := true
##USE_CUSTOM_AUDIO_POLICY := 1
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
QCOM_BT_USE_BTNV := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
TARGET_USE_QTI_BT_STACK := true

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
BOARD_QTI_CAMERA_32BIT_ONLY := true

# Charger Mode
BOARD_CHARGER_ENABLE_SUSPEND := true

# ANT+
#BOARD_ANT_WIRELESS_DEVICE := "qualcomm-hidl"

# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT := true
    WITH_DEXPREOPT_DEBUG_INFO := false
    USE_DEX2OAT_DEBUG := false
    DONT_DEXPREOPT_PREBUILTS := true
    WITH_DEXPREOPT_PIC := true
    # WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true
  endif
endif

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DPM
BOARD_USES_DPM := true
# CNE
BOARD_USES_QCNE := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Telephony
TARGET_USES_ALTERNATIVE_MANUAL_NETWORK_SELECT := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_PROVIDES_LIBPLATFORMCONFIG := true

# Graphics

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_QCOM_DISPLAY_BSP := true
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DRM_PP := true
TARGET_HAS_WIDE_COLOR_DISPLAY := true
TARGET_HAS_HDR_DISPLAY := true
TARGET_USES_ION := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x02000000U

# GPS
#TARGET_NO_RPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := true
USE_DEVICE_SPECIFIC_GPS := true
LOC_HIDL_VERSION := 3.0

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.xiaomi_grus

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 119613140992
BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist \
    /vendor/bt_firmware:/bt_firmware \
    /vendor/dsp:/dsp \
    /vendor/firmware_mnt:/firmware

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
TARGET_USES_MKE2FS := true

TARGET_COPY_OUT_VENDOR := vendor

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Releasetools
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_xiaomi
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
include device/qcom/sepolicy/sepolicy.mk

# Ignore SELinux neverallows
ifneq ($(TARGET_BUILD_VARIANT),user)
  SELINUX_IGNORE_NEVERALLOWS := true
endif

# RIL
PROTOBUF_SUPPORTED := true

# Sensors
USE_SENSOR_MULTI_HAL := true

# Telephony
ENABLE_VENDOR_RIL_SERVICE := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH ?= vendor/qcom/opensource/cryptfs_hw

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# Power
TARGET_TAP_TO_WAKE_NODE := "/dev/input/event2"
TARGET_USES_INTERACTION_BOOST := true
TARGET_USES_NON_LEGACY_POWERHAL := true

# Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 1

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
PRODUCT_VENDOR_MOVE_ENABLED := true

# NFC
TARGET_USES_NQ_NFC := true
BOARD_NFC_CHIPSET := pn553

# WiFi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_AWARE := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true

