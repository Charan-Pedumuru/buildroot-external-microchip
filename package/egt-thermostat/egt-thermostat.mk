################################################################################
#
# egt thermostat demo
#
################################################################################

EGT_THERMOSTAT_VERSION = 1.8.1
EGT_THERMOSTAT_SITE = https://github.com/linux4sam/egt-thermostat.git
EGT_THERMOSTAT_SITE_METHOD = git
EGT_THERMOSTAT_GIT_SUBMODULES = YES
EGT_THERMOSTAT_LICENSE = Apache-2.0
EGT_THERMOSTAT_INSTALL_TARGET = YES
EGT_THERMOSTAT_DEPENDENCIES = egt

define EGT_THERMOSTAT_RUN_AUTOGEN
        cd $(@D) && PATH=$(BR_PATH) ./autogen.sh
endef
EGT_THERMOSTAT_POST_PATCH_HOOKS += EGT_THERMOSTAT_RUN_AUTOGEN

$(eval $(autotools-package))
