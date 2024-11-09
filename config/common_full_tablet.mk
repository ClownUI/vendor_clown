# Inherit mobile full common Lineage stuff
$(call inherit-product, vendor/clown/config/common_mobile_full.mk)

# Inherit tablet common Lineage stuff
$(call inherit-product, vendor/clown/config/tablet.mk)

$(call inherit-product, vendor/clown/config/telephony.mk)
