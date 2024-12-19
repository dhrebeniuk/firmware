################################################################################
#
# testhello
#
################################################################################

TESTHELLO_SITE = $(call github,dhrebeniuk,testhello,$(TESTHELLO_VERSION))
TESTHELLO_VERSION = HEAD

TESTHELLO_LICENSE = MIT
TESTHELLO_LICENSE_FILES = LICENSE

define TESTHELLO_INSTALL_TARGET_CMDS
$(INSTALL) -m 0755 -D $(@D)/testhello $(TARGET_DIR)/usr/bin/testhello
endef

$(eval $(generic-package))
