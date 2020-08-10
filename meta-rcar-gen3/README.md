# meta-docker/meta-rcar-gen3

This layer provides the configuration to use Docker Engine on the R-Car.

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: rocko
  * revision: 7e7ee662f5dea4d090293045f7498093322802cc

* URI: git://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: rocko
  * revision: 70d47c56f04a7ee78597770b88de68a59c56a4aa

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-networking, meta-python, meta-filesystems
  * branch: rocko
  * revision: 352531015014d1957d6444d114f4451e241c4d23

* URI: git://git.linaro.org/openembedded/meta-linaro
  * layers; meta-optee
  * branch: rocko
  * revision: 7e7ee662f5dea4d090293045f7498093322802cc

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: rocko
  * revision: b704c689b67639214b9568a3d62e82df27e9434f

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
