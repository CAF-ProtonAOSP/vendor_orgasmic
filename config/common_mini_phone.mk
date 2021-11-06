# Inherit mini common Lineage stuff
$(call inherit-product, vendor/proton/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/proton/config/telephony.mk)
