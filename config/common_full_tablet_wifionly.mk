# Inherit full common Lineage stuff
$(call inherit-product, vendor/proton/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/proton/overlay/dictionaries
