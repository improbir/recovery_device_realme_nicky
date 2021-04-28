# Release name
PRODUCT_RELEASE_NAME := xandxt

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# For PBRP
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xandxt
PRODUCT_NAME := omni_xandxt
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme X/XT
PRODUCT_MANUFACTURER := Realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=xandxt \
    BUILD_PRODUCT=xandxt \
    TARGET_DEVICE=xandxt

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device
