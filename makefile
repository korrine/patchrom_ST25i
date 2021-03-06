#
# Makefile for lt26i 
#
local-previous-target-dir := ~/workspace/ota_base/lt26i

# The original zip file, MUST be specified by each product
local-zip-file     := ST25i.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_ST25i.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := CustomizedSettings MediaProvider

local-modified-jars := 

local-miui-modified-apps := MiuiHome Mms Settings Phone ThemeManager MiuiGallery Music

local-miui-removed-apps  := MediaProvider

# All apps need to be removed from original ZIP file

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
	@echo Replace build.prop
	cp other/build-ST25i.prop $(ZIP_DIR)/system/build.prop
	rm $(ZIP_DIR)/system/vendor/overlay -rf
local-test:
	echo "an example action"
