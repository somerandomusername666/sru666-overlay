# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

MY_P="${PN}cvs"

inherit autotools-utils

DESCRIPTION="This is a sample skeleton ebuild file"
HOMEPAGE="FORM is a Symbolic Manipulation System"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug doc"

RESTRICT="mirror"

DEPEND="dev-libs/gmp
	sys-libs/zlib"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_unpack() {
	wget -O ${MY_P}.tar.gz \
		http://www.nikhef.nl/~form/formcvs.php?dl=${MY_P}.tar.gz
	unpack ./${MY_P}.tar.gz
}

src_prepare() {
	# cvs ships without distribution files
	eautoreconf
}