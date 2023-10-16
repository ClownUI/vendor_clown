# Inherit common Lineage stuff
$(call inherit-product, vendor/clown/config/common_mobile.mk)

PRODUCT_SIZE := full

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/clown/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/clown/overlay/dictionaries
