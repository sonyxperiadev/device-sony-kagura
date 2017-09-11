# Copyright 2014 The Android Open Source Project
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

include device/sony/tone/PlatformConfig.mk

TARGET_BOOTLOADER_BOARD_NAME := F8331

WIFI_BUS := PCIE

# NFC
NXP_CHIP_TYPE := PN547C2
NXP_CHIP_FW_TYPE := PN547C2

BOARD_KERNEL_CMDLINE += androidboot.hardware=kagura

# Recovery config
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_NUM="48"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_MAJOR="259"
BOARD_SONY_INIT_FLAGS += -DDEV_BLOCK_FOTA_MINOR="16"

#Reserve space for data encryption (23857201152-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23857184768

#TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/clearpad/wakeup_gesture"
