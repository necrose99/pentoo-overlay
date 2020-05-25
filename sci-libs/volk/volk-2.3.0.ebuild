# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="vector optimized library of kernels"
HOMEPAGE="http://libvolk.org"
SRC_URI="https://github.com/gnuradio/volk/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+lang_orc"

RDEPEND="dev-libs/boost"
DEPEND="${RDEPEND}
	dev-python/mako
	dev-python/six
	dev-lang/orc"

CMAKE_BUILD_TYPE=Release

src_configure() {
	local mycmakeargs=(
		#orc is a global variable
		-DENABLE_ORC=$(usex lang_orc)
	)
	cmake-utils_src_configure
}