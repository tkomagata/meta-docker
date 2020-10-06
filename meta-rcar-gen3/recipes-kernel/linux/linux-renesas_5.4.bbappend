inherit features_check
REQUIRED_DISTRO_FEATURES = "docker"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
    file://docker-config-required.cfg \
    file://docker-config-optional.cfg \
    file://docker-config-optional-NetworkDrv.cfg \
    file://docker-config-optional-StorageDrv.cfg \
"
