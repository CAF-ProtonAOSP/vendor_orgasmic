# Set proton specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common proton stuff
$(call inherit-product, vendor/proton/config/common_mini_phone.mk)
