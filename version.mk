include $(CURDIR)/vendor.mk

VERSION := $(ROM_VERSION_MAJOR).$(ROM_VERSION_MINOR)$(ROM_VERSION_MAINTENANCE)
ifeq ($ROM_VERSION_TAG,"")
	export ROM_VERSION := $(VERSION)-($ROM_VERSION_TAG)
else 
	export ROM_VERSION := $(VERSION)
endif 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(ROM_VERSION) \
    ro.$VENDOR.version=$(VERSION) 
