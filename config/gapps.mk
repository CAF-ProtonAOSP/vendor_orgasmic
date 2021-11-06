# Gapps
ifeq ($(WITH_GAPPS),true)
$(call inherit-product, vendor/gapps/common/common-vendor.mk)

# # Common Overlay
# DEVICE_PACKAGE_OVERLAYS += \
#     vendor/proton/overlay-gapps/common

# # Exclude RRO Enforcement
# PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS +=  \
#     vendor/proton/overlay-gapps

# $(call inherit-product, vendor/proton/config/rro_overlays.mk)
endif
