## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
#PRODUCT_RELEASE_NAME := GalaxyS_B
PRODUCT_RELEASE_NAME := BeagleBoneBlack

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ti/beagleboneblack/full_beagleboneblack.mk)
#$(call inherit-product, device/samsung/galaxysbmtd/full_galaxysbmtd.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := beagleboneblack
PRODUCT_NAME := cm_beagleboneblack
PRODUCT_BRAND := ti
PRODUCT_MODEL := 1
#PRODUCT_DEVICE := galaxysbmtd
#PRODUCT_NAME := cm_galaxysbmtd
#PRODUCT_BRAND := samsung
#PRODUCT_MODEL := GT-I9000B

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=beagleboneblack TARGET_DEVICE=beagleboneblack BUILD_FINGERPRINT=ti/beagleboneblack/beagleboneblack:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="beagleboneblack-user 2.3.5 GINGERBREAD XXJVT release-keys"
#PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000B TARGET_DEVICE=GT-I9000B BUILD_FINGERPRINT=samsung/GT-I9000B/GT-I9000B:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000B-user 2.3.5 GINGERBREAD XXJVT release-keys"
