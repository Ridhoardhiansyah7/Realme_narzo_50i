# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable virtual A/B OTA
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from RMX3235 device
$(call inherit-product, device/realme/RMX3235/device.mk)

PRODUCT_DEVICE := RMX3235
PRODUCT_NAME := pbrp_RMX3235
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3235
PRODUCT_MANUFACTURER := realme
