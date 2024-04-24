# Inherit mobile full common Clown stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit tablet common Clown stuff
$(call inherit-product, vendor/clown/config/tablet.mk)

$(call inherit-product, vendor/clown/config/telephony.mk)

# GMS
WITH_GMS ?= true
ifeq ($(WITH_GMS),true)
ifeq ($(TARGET_USES_MINI_GAPPS),true)
$(call inherit-product, vendor/gms/gms_mini.mk)
else ifeq ($(TARGET_USES_PICO_GAPPS),true)
$(call inherit-product, vendor/gms/gms_pico.mk)
else
$(call inherit-product, vendor/gms/gms_full.mk)
endif
endif
