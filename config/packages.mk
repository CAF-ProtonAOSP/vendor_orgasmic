$(call inherit-product, vendor/proton/themes/themes.mk)

# Proton packages
PRODUCT_PACKAGES += \
    ThemePicker \
    QuickAccessWallet \
    StitchImage \
    wellbeingconf \
    googleconf


# Extra tools in Proton
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

