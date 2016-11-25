# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Rhine device parts
$(call inherit-product, device/sony/honami/aosp_c6903.mk)

# Inherit Lineage Rhine device parts
$(call inherit-product, device/sony/rhine-common/platform2.mk)

# Inherit Lineage common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Fingerprint for honami (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/C6903/C6903:5.1.1/14.6.A.1.236/2031203603:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="C6903-user 5.1.1 14.6.A.1.236 2031203603 release-keys"

# Override Product Name for LineageOS
PRODUCT_NAME := lineage_honami
PRODUCT_MODEL := Xperia Z1
