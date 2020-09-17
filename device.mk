#
# Copyright (C) 2017 The LineageOS Project
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

# AAPT
PRODUCT_AAPT_PREF_CONFIG := 400dpi

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Inherit from msm8998-common
$(call inherit-product, device/xiaomi/msm8998-common/msm8998.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml

# GApps
GAPPS_VARIANT := super
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true
GAPPS_FORCE_DIALER_OVERRIDES := false
GAPPS_FORCE_MMS_OVERRIDES := true
GAPPS_FORCE_PIXEL_LAUNCHER := false
GAPPS_FORCE_WEBVIEW_OVERRIDES := true
GAPPS_EXCLUDED_PACKAGES += CalculatorGoogle
GAPPS_EXCLUDED_PACKAGES += CloudPrint2
GAPPS_EXCLUDED_PACKAGES += DMAgent
GAPPS_EXCLUDED_PACKAGES += Drive
GAPPS_EXCLUDED_PACKAGES += EditorsDocs
GAPPS_EXCLUDED_PACKAGES += EditorsSheets
GAPPS_EXCLUDED_PACKAGES += EditorsSlides
GAPPS_EXCLUDED_PACKAGES += FitnessPrebuilt
GAPPS_EXCLUDED_PACKAGES += GoogleCamera
GAPPS_EXCLUDED_PACKAGES += GoogleContacts
GAPPS_EXCLUDED_PACKAGES += GoogleEarth
GAPPS_EXCLUDED_PACKAGES += GoogleHindiIME
GAPPS_EXCLUDED_PACKAGES += GoogleJapaneseInput
GAPPS_EXCLUDED_PACKAGES += GooglePackageInstaller
GAPPS_EXCLUDED_PACKAGES += GooglePinyinIME
GAPPS_EXCLUDED_PACKAGES += GooglePrintRecommendationService
GAPPS_EXCLUDED_PACKAGES += GoogleVrCore
GAPPS_EXCLUDED_PACKAGES += GoogleZhuyinIME
GAPPS_EXCLUDED_PACKAGES += Hangouts
GAPPS_EXCLUDED_PACKAGES += KoreanIME
GAPPS_EXCLUDED_PACKAGES += Music2
GAPPS_EXCLUDED_PACKAGES += Newsstand
GAPPS_EXCLUDED_PACKAGES += PlayGames
GAPPS_EXCLUDED_PACKAGES += PrebuiltDeskClockGoogle
GAPPS_EXCLUDED_PACKAGES += Street
GAPPS_EXCLUDED_PACKAGES += StorageManagerGoogle
GAPPS_EXCLUDED_PACKAGES += TagGoogle
GAPPS_EXCLUDED_PACKAGES += TranslatePrebuilt
GAPPS_EXCLUDED_PACKAGES += Turbo
GAPPS_EXCLUDED_PACKAGES += Tycho
GAPPS_EXCLUDED_PACKAGES += Videos
GAPPS_EXCLUDED_PACKAGES += Wallet

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(LOCAL_PATH)/configs/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-goodix.kl

# Properties
include $(LOCAL_PATH)/vendor_prop.mk

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/chiron/chiron-vendor.mk)

# Call the gapps provider
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
