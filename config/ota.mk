# Updater
ifeq ($(CLOWN_OFFICIAL),true)
    PRODUCT_PACKAGES += \
        Updater

    PRODUCT_COPY_FILES += \
        vendor/clown/prebuilt/common/etc/init/init.custom-updater.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.custom-updater.rc
endif
