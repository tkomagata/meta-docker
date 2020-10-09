inherit features_check
REQUIRED_DISTRO_FEATURES = "docker"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCREV_meta = "aafb8f095e97013d6e55b09ed150369cbe0c6476"
SRC_URI_append = " \
    git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-5.4;destsuffix=kernel-meta \
"

SRC_URI_append_raspberrypi3 = " \
    file://linux-raspberrypi3/docker-config-optional.cfg \
"

SRC_URI_append_raspberrypi3-64 = " \
    file://linux-raspberrypi3-64/docker-config-optional.cfg \
"

SRC_URI_append_raspberrypi4 = " \
    file://linux-raspberrypi4/docker-config-optional.cfg \
"

SRC_URI_append_raspberrypi4-64 = " \
    file://linux-raspberrypi4-64/docker-config-optional.cfg \
"
