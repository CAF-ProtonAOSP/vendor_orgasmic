$(call inherit-product, vendor/orgasmic/themes/themes.mk)

LOCAL_PATH := vendor/orgasmic/config/permissions

# Orgasmic packages
PRODUCT_PACKAGES += \
    ThemePicker \
    QuickAccessWallet \
    StitchImage \
    wellbeingconf \
    googleconf \
    Flipendo

#Turbo
ifneq ($(WITH_GAPPS), true)
PRODUCT_PACKAGES += \
     Turbo

PRODUCT_COPY_FILES += \
    vendor/orgasmic/prebuilt/common/etc/permissions/privapp-permissions-turbo.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-turbo.xml \
    vendor/orgasmic/prebuilt/common/etc/turbo.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/turbo.xml
endif

# Extra tools in Orgasmic
PRODUCT_PACKAGES += \
    7z \
    bash \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    setcap \
    unrar \
    vim \
    wget \
    zip

# LineageOS apps
PRODUCT_PACKAGES += \
    ExactCalculator \
    Jelly \

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Config
PRODUCT_PACKAGES += \
    SimpleDeviceConfig \

# Wallpapers
PRODUCT_PACKAGES += \
    ProtonWallpaperStub \

# Permissions for Google product apps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/default-permissions-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default-permissions-product.xml \
