# meta-docker/meta-rcar-gen3

This layer provides the configuration to use Docker Engine on the R-Car.

## Dependencies

This layer depends on:

* URI: git://git.yoctoproject.org/poky
  * branch: dunfell
  * revision: 424296bf9bb4bae27febf91bce0118df09ce5fa1

* URI: git://github.com/renesas-rcar/meta-renesas
  * layers; meta-rcar-gen3
  * branch: dunfell
  * revision: fd8ab2bb1b5ca98483c6f4aecf09a85c4d6bc016

* URI: git://git.openembedded.org/meta-openembedded
  * layers: meta-oe, meta-networking, meta-python, meta-filesystems
  * branch: dunfell
  * revision: f2d02cb71eaff8eb285a1997b30be52486c160ae

* URI: git://git.yoctoproject.org/meta-virtualization
  * branch: dunfell
  * revision: ff997b6b3ba800978546098ab3cdaa113b6695e1

The following layer is required only for CCPF-SK board

* URI: git://github.com/renesas-rcar/meta-renesas-ccpf
  * layers; meta-rcar-gen3
  * branch: dunfell
  * revision: 271d6501a777edc474f74716ddc3caa310da927d

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
