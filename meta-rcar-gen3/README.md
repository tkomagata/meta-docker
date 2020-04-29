# meta-docker/meta-rcar-gen3

This layer provides the configuration to use Docker Engine on the R-Car.

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: zeus
  * revision: 94f6b31befda5c496f65e863a6f8152b42d7ebf0

* URI: git://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: zeus-dev
  * revision: 32e34de56a7962efa45725b3db5838b07adca06f

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-networking, meta-python, meta-filesystems
  * branch: zeus
  * revision: 1bfaa2e63a184e21a2db5c286444828d5948a8b4

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: zeus
  * revision: f4262ab75d36a06c528cc1630b48b817fb0acf8f

## Patches

Please submit any patches against the meta-docker layer to the the maintainer:

Maintainer: Tomohiro Komagata <tomohiro.komagata.aj at gmail.com>

## Quick Start

1. TEMPLATECONF=$PWD/meta-docker/meta-rcar-gen3/conf/machine/h3ulcb/bsp/ \
   source poky/oe-init-build-env rcar-build
2. bitbake core-image-minimal
3. Prepare a SD card and set the u-boot environment variables. Please refer the [R-Car page on eLinux Wiki](https://elinux.org/R-Car/Boards/Yocto-Gen3/v3.21.0#Running_Yocto_images).
4. Boot your R-Car Starter Kit.

## Supported Boards/Machines

- Renesas Electronics Corporation. R-Car Starter Kit premier(H3ULCB) (R8A7795)
- Renesas Electronics Corporation. R-Car Starter Kit pro(M3ULCB) (R8A7796)
