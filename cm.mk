## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := nx511j

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/nx511j/device_nx511j.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nx511j
PRODUCT_NAME := cm_nx511j
PRODUCT_BRAND := zte
PRODUCT_MODEL := nx511j
PRODUCT_MANUFACTURER := zte
