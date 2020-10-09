inherit features_check
REQUIRED_DISTRO_FEATURES = "docker"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRCREV_meta = "aafb8f095e97013d6e55b09ed150369cbe0c6476"

SRC_URI_append = " \
    file://docker-config-required.cfg \
    file://docker-config-optional.cfg \
    file://docker-config-optional-NetworkDrv.cfg \
    file://docker-config-optional-StorageDrv.cfg \
    git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-5.4;destsuffix=kernel-meta \
"
