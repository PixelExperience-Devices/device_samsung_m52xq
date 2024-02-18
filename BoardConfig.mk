#
# Copyright (C) 2023 The LineageOS Project
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

DEVICE_PATH := device/samsung/m52xq

include device/samsung/sm7325-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG        := vendor/lineage-m52xq_defconfig
BOARD_NAME                  := SRPUF17B001

# Kernel modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_RECOVERY_RAMDISK_KERNEL_MODULES_LOAD)

# Recovery
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 420
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U

# Fingerprint
TARGET_SEC_FP_HAS_FINGERPRINT_GESTURES := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := m52xq

# Security patch
VENDOR_SECURITY_PATCH := 2023-08-01

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
