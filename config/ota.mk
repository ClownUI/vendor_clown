# Updater
ifeq ($(IS_OFFICIAL),true)
    PRODUCT_PACKAGES += \
        Updates

    PRODUCT_COPY_FILES += \
        vendor/clown/prebuilt/common/etc/init/init.clown-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.clown-updater.rc
endif
