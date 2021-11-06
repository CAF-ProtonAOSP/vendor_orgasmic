# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

CUSTOM_ROM_VERSION := 12.0.0

# proton Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.proton.display.version=$(PROTON_DISPLAY_VERSION) \
    ro.proton.build.version=$(PROTON_BUILD_VERSION) \
    ro.proton.build.date=$(BUILD_DATE) \
    ro.proton.buildtype=$(PROTON_BUILD_TYPE) \
    ro.proton.fingerprint=$(ROM_FINGERPRINT) \
    ro.proton.version=$(PROTON_VERSION) \
    ro.modversion=$(PROTON_VERSION)\
    ro.build.version.custom=$(CUSTOM_ROM_VERSION)
