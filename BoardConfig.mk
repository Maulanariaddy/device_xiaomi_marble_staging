#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/marble/BoardConfigVendor.mk

# Inherit from proprietary files for miuicamera
-include device/xiaomi/miuicamera-marble/BoardConfig.mk

DEVICE_PATH := device/xiaomi/marble

# Assert
TARGET_OTA_ASSERT_DEVICE := marble,marblein

# Kernel modules
BOOT_KERNEL_MODULES += \
    qcom_pm8008-regulator.ko \
    gt9916r.ko \
    qcom-hv-haptics.ko \
    fpc1540.ko \
    goodix_3626.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(BOOT_KERNEL_MODULES)
BOARD_VENDOR_KERNEL_MODULES_LOAD += $(BOOT_KERNEL_MODULES)

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/properties/odm.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Screen density
TARGET_SCREEN_DENSITY := 440

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Vibrator
TARGET_QTI_VIBRATOR_EFFECT_LIB := libqtivibratoreffect.xiaomi
TARGET_QTI_VIBRATOR_USE_EFFECT_STREAM := true
