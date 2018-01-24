# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

ETYPE=sources
K_DEFCONFIG="odroidxu4_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-r3 versionator
EGIT_REPO_URI=https://github.com/hardkernel/linux.git
EGIT_BRANCH="odroidxu4-$(get_version_component_range 1-2).y"
EGIT_CHECKOUT_DIR="${WORKDIR}/linux-${PV}-odroidxu4/"
EGIT_COMMIT="4820b9d5ebbd4e80ec894b30130d78364e6c295c"

DESCRIPTION="Odroid XU4 kernel sources"
HOMEPAGE="https://github.com/hardkernel/linux"

KEYWORDS=""

src_unpack() {
    git-r3_src_unpack
    unpack_set_extraversion
}
