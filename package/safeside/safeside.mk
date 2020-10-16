################################################################################
#
# safeside
#
################################################################################

SAFESIDE_VERSION=main
SAFESIDE_SITE=$(call github,google,safeside,$(SAFESIDE_VERSION))
SAFESIDE_INSTALL_TARGET=YES

define SAFESIDE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 -t $(TARGET_DIR)/usr/bin/lkdev $(@D)/demos/ret2spec_sa
	$(INSTALL) -D -m 0755 -t $(TARGET_DIR)/usr/bin/lkdev $(@D)/demos/ret2spec_ca
	$(INSTALL) -D -m 0755 -t $(TARGET_DIR)/usr/bin/lkdev $(@D)/demos/l1tf
	$(INSTALL) -D -m 0755 -t $(TARGET_DIR)/usr/lib $(@D)/demos/libsafeside.so
endef

$(eval $(cmake-package))
