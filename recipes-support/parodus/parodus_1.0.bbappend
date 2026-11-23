SRC_URI_remove = "git://github.com/rdkcentral/parodus.git"
SRC_URI += "git://github.com/rdkcentral/parodus.git;protocol=https;nobranch=1"

DEPENDS += "breakpad breakpad-wrapper"

CFLAGS += "-I${STAGING_INCDIR}/breakpad "
CXXFLAGS += "-I${STAGING_INCDIR}/breakpad "

LDFLAGS += "-lbreakpadwrapper"
