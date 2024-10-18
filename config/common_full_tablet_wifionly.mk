# Inherit mobile full common ClownUI stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit tablet common ClownUI stuff
$(call inherit-product, vendor/clown/config/tablet.mk)

$(call inherit-product, vendor/clown/config/wifionly.mk)
