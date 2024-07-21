# Inherit mobile full common stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit full tablet common stuff
$(call inherit-product, vendor/clown/config/full_tablet.mk)

$(call inherit-product, vendor/clown/config/telephony.mk)
