# Inherit mobile full common Clown stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit tablet common Clown stuff
$(call inherit-product, vendor/clown/config/tablet.mk)

$(call inherit-product, vendor/clown/config/telephony.mk)
