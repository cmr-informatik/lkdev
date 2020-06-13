################################################################################
#
# will-it-scale
#
################################################################################

WILL_IT_SCALE_VERSION=master
WILL_IT_SCALE_SITE=$(call github,antonblanchard,will-it-scale,$(WILL_IT_SCALE_VERSION))
WILL_IT_SCALE_DEPENDENCIES=hwloc
WILL_IT_SCALE_INSTALL_TARGET=YES

define WILL_IT_SCALE_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define WILL_IT_SCALE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 -t $(TARGET_DIR)/usr/bin/lkdev $(@D)/*_threads
	$(INSTALL) -D -m 0755 -t $(TARGET_DIR)/usr/bin/lkdev $(@D)/*_processes
endef

$(eval $(generic-package))
