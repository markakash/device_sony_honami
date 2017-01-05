# Inherit AOSP Rhine device parts
$(call inherit-product, device/sony/honami/aosp_c6903.mk)

# Inherit Lineage Rhine device parts
$(call inherit-product, device/sony/rhine-common/platform2.mk)

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Override Product Name for AICP
PRODUCT_NAME := aicp_honami
PRODUCT_MODEL := Xperia Z1
