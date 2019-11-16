# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X90 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := doogee
PRODUCT_DEVICE := X90
PRODUCT_MANUFACTURER := doogee
PRODUCT_NAME := lineage_X90
PRODUCT_MODEL := X90

PRODUCT_GMS_CLIENTID_BASE := android-doogee
TARGET_VENDOR := doogee
TARGET_VENDOR_PRODUCT_NAME := X90
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k80hd_bsp_fwv_512m-user 8.1.0 O11019 1558923087 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := DOOGEE/X90/X90:8.1.0/O11019/1558407864:user/release-keys
