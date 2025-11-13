MAINTAINER = "RDK CMF Team <support@rdkcentral.com>"

CMF_GIT_MAIN_BRANCH ?= "main"

PREFERRED_PROVIDER_curl ?= "curl"

# Revert meta-rdk/+/73763 RDKTV-17032: Build failure due to compiler out of memory
# It is causing race condition issues in build
PARALLEL_MAKE_remove = " -l ${@int(os.sysconf(os.sysconf_names['SC_NPROCESSORS_ONLN'])) * 150/100}"

# Add mixed mode support in addition to the list in
# meta-rdk/conf/distro/include/license_flags_whitelist.inc
require ${@bb.utils.contains_any('DISTRO_FEATURES','dunfell','license_flags_whitelist.inc','license_flags_accepted.inc',d)}
