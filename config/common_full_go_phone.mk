# Set proton specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common proton stuff
$(call inherit-product, vendor/proton/config/common_full_phone.mk)
