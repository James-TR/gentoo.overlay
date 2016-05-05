# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit multilib

DESCRIPTION="Library for authenticating against PAM with a Yubikey"
HOMEPAGE="https://github.com/Yubico/pam-u2f"
SRC_URI="https://developers.yubico.com/${PN/_/-}/Releases/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-crypt/libu2f-host
	app-crypt/libu2f-server
	virtual/pam"

DEPEND="${RDEPEND}"

src_prepare() {
	default	
}

src_install() {
	default
	#prune_libtool_files #why doesn't this work?
	find "${D}" -name '*.la' -delete || die
}
