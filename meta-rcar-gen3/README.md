# meta-docker/meta-rcar-gen3

This layer provides the configuration to use Docker Engine on the R-Car.

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: thud
  * revision: e7f0177ef3b6e06b8bc1722fca0241fef08a1530

* URI: git://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: thud-dev
  * revision: 21d840bc10492ea2f0f45f01df526cbfdb7735cf

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-networking, meta-python, meta-filesystems
  * branch: thud
  * revision: 4cd3a39f22a2712bfa8fc657d09fe2c7765a4005

* URI: git://git.linaro.org/openembedded/meta-linaro
  * layers; meta-optee
  * branch: thud
  * revision: 0a94decea3bd2504590d1637eadff9d502c19ee2

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: thud
  * revision: 7685c7d415e0002c448007960837ae8898cd57a5

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
