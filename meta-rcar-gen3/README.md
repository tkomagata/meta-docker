# meta-docker/meta-rcar-gen3

This layer provides the configuration to use Docker Engine on the R-Car.

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: dunfell
  * revision: 569b1f5d67c57de957e243997c53ec2f81dc8dfe

* URI: git://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: dunfell-dev
  * revision: 072c0f8648a3e19ff145508d8d431308363a699c

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-networking, meta-python, meta-filesystems
  * branch: dunfell
  * revision: 654ad8bea49f142d20b2b96c0dd44810a6be233a

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: dunfell
  * revision: ff997b6b3ba800978546098ab3cdaa113b6695e1

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
