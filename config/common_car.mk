# Inherit common Lineage stuff
$(call inherit-product, vendor/clown/config/common.mk)

# Inherit Lineage car device tree
$(call inherit-product, device/clown/car/lineage_car.mk)
