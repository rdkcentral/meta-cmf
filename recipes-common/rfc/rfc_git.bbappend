DEPENDS_append = " wdmp-c"

DEPENDS_remove = "mountutils"
DEPENDS_remove = "rdkcertconfig"
EXTRA_OECONF_remove = "--enable-mountutils=yes"
EXTRA_OECONF_remove = "--enable-rdkcertselector=yes"

# Remove rdkb support due to dependency on CPC cpg-utils
EXTRA_OECONF_remove = "--enable-rdkb=yes"
