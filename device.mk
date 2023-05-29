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

DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# call the common setup
$(call inherit-product, device/samsung/sm7325-common/common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/m52xq/m52xq-vendor.mk)

# Init files
PRODUCT_PACKAGES += \
    init.m52xq.rc

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/audio_platform_info_diff.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_diff.xml

# Recovery modules and firmware
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_cmd.ko:root/vendor/lib/modules/sec_cmd.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_common_fn.ko:root/vendor/lib/modules/sec_common_fn.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_secure_touch.ko:root/vendor/lib/modules/sec_secure_touch.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_tclm_v2.ko:root/vendor/lib/modules/sec_tclm_v2.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_tsp_dumpkey.ko:root/vendor/lib/modules/sec_tsp_dumpkey.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/sec_tsp_log.ko:root/vendor/lib/modules/sec_tsp_log.ko \
    $(DEVICE_PATH)/recovery/root/vendor/lib/modules/synaptics_ts.ko:root/vendor/lib/modules/synaptics_ts.ko \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/tsp_synaptics/s3908_m52xq_boe.bin:root/vendor/firmware/tsp_synaptics/s3908_m52xq_boe.bin \
    $(DEVICE_PATH)/recovery/root/vendor/firmware/tsp_synaptics/s3908_m52xq_sdc.bin:root/vendor/firmware/tsp_synaptics/s3908_m52xq_sdc.bin
