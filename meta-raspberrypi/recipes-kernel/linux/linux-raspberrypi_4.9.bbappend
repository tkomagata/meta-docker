inherit distro_features_check
REQUIRED_DISTRO_FEATURES = "docker"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_raspberrypi3 = " \
    file://linux-raspberrypi3/docker-config-optional.cfg \
    file://linux-raspberrypi3/docker-config-optional-NetworkDrv.cfg \
"

SRC_URI_append_raspberrypi3-64 = " \
    file://linux-raspberrypi3-64/docker-config-optional.cfg \
    file://linux-raspberrypi3-64/docker-config-optional-NetworkDrv.cfg \
"
