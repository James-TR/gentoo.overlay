# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

ETYPE=sources
K_DEFCONFIG="odroidxu4_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
S="${WORKDIR}/linux-${PV}-odroidxu4/"
inherit kernel-2
detect_version
detect_arch

inherit git-r3 versionator
EGIT_REPO_URI=https://github.com/hardkernel/linux.git
EGIT_BRANCH="odroidxu4-$(get_version_component_range 1-2).y"
EGIT_CHECKOUT_DIR="${S}"
EGIT_COMMIT="b8aafc415973f28ddfc4bd1cbd94446a9a219d72"

DESCRIPTION="Kernel Sources for Hardkernel Odroid XU4"
HOMEPAGE="https://github.com/hardkernel/linux/tree/odroidxu4-4.14.y"


KEYWORDS="~arm"

src_unpack() {
    git-r3_src_unpack
    unpack_set_extraversion
}
