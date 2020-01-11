# meta-docker/meta-raspberrypi

This layer provides the configuration to use Docker Engine on the Raspberrypi

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: sumo
  * revision: HEAD

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-multimedia, meta-networking, meta-python, meta-filesystems
  * branch: sumo
  * revision: HEAD

* URI: git://git.yoctoproject.org/meta-raspberrypi
  * branch: sumo
  * revision: HEAD

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: sumo
  * revision: HEAD

## Patches

Please submit any patches against the meta-docker layer to the the maintainer:

Maintainer: Tomohiro Komagata <tomohiro.komagata.aj at gmail.com>

## Quick Start

1. TEMPLATECONF=$PWD/meta-docker/meta-raspberrypi/conf/machine/raspberrypi3-64/ \
   source poky/oe-init-build-env rpi-build
2. bitbake rpi-hwup-image
3. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
4. Boot your RPI.

## Supported Boards/Machines

- Raspberrypi 3 (32bit) : raspberrypi3
- Raspberrypi 3 (64bit) : raspberrypi3-64
