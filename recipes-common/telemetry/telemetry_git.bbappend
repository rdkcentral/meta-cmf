inherit coverity

DEPENDS_remove = "mountutils"
DEPENDS_remove = "rdkconfig"

EXTRA_OECONF_remove = "--enable-mountutils"
EXTRA_OECONF_remove = "--enable-rdkcertselector"
