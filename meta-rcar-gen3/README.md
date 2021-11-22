# meta-docker/meta-rcar-gen3

This layer provides the configuration to use Docker Engine on the R-Car.

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: dunfell
  * revision: 6ebb33bdaccaeadff0c85aab27acf35723df00d8

* URI: git://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: dunfell
  * revision: 0fe77668f5d9a31a5d10449988c3d8fb8dc475c5

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-networking, meta-python, meta-filesystems
  * branch: dunfell
  * revision: c38d2a74f762a792046f3d3c377827b08aade513

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: dunfell
  * revision: 92cd3467502bd27b98a76862ca6525ce425a8479

The following layer is required only for CCPF-SK board

* URI: git://github.com/renesas-rcar/meta-renesas-ccpf
  * layers; meta-rcar-gen3
  * branch: dunfell
  * revision: (Not released yet)

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
- Shimafuji Electric Incorporated. CCPF-SK board for R-Car Starter Kit
