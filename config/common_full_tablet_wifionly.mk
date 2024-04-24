# Inherit mobile full common ClownUI stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit tablet common ClownUI stuff
$(call inherit-product, vendor/clown/config/tablet.mk)

$(call inherit-product, vendor/clown/config/wifionly.mk)

# GMS
WITH_GMS ?= true
ifeq ($(WITH_GMS),true)
$(call inherit-product, vendor/gms/gms_full_tablet_wifionly.mk)
endif
