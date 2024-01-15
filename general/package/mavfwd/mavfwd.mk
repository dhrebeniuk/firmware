################################################################################
#
# mavfwd
#
################################################################################

MAVFWD_SITE_METHOD = git
MAVFWD_SITE = https://github.com/dhrebeniuk/mavfwd
MAVFWD_VERSION = fa557d8819bbcfed01bec2d0f4ba0b9ba293652d

MAVFWD_LICENSE = MIT
MAVFWD_LICENSE_FILES = LICENSE

MAVFWD_DEPENDENCIES = libevent-openipc

define MAVFWD_BUILD_CMDS
    (cd $(@D); $(TARGET_CC) -levent_core -s mavfwd.c -o mavfwd)
endef

define MAVFWD_INSTALL_TARGET_CMDS
    $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
    $(INSTALL) -m 0755 -D $(@D)/mavfwd $(TARGET_DIR)/usr/bin/mavfwd

    $(INSTALL) -m 755 -d $(TARGET_DIR)/usr/sbin
    cp $(MAVFWD_PKGDIR)/files/channels.sh $(TARGET_DIR)/usr/sbin
endef

$(eval $(generic-package))
