# Inherit mobile full common stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit tablet common stuff
$(call inherit-product, vendor/clown/config/tablet.mk)

$(call inherit-product, vendor/clown/config/wifionly.mk)
