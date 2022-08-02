# Boot Animation

# 1080p
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
PRODUCT_COPY_FILES += vendor/clown/prebuilt/common/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# 1440p
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
PRODUCT_COPY_FILES += vendor/clown/prebuilt/common/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
# Default to 1080p if the device does not set the flag.
else
PRODUCT_COPY_FILES += vendor/clown/prebuilt/common/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
