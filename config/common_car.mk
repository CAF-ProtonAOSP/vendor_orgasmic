# Inherit common proton stuff
$(call inherit-product, vendor/proton/config/common.mk)

# Inherit proton car device tree
$(call inherit-product, device/proton/car/proton_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
