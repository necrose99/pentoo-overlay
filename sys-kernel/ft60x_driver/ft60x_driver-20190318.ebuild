# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit linux-mod udev

MY_COMMIT="c216cc41a2f9e4b4bc356fb2ca17359275a4f3cd"

DESCRIPTION="USB FT60x driver"
HOMEPAGE="https://github.com/lambdaconcept/ft60x_driver"
SRC_URI="https://github.com/lambdaconcept/ft60x_driver/archive/${MY_COMMIT}.zip -> ${P}.zip"

LICENSE="GPL-2"
SLOT="0"

KEYWORDS="amd64 ~arm64 x86"
IUSE=""

S="${WORKDIR}/${PN}-${MY_COMMIT}"

MODULE_NAMES="ft60x(usb:${S}:${S})"
BUILD_TARGETS="all"

pkg_setup() {
	linux-mod_pkg_setup
}

src_install() {
	linux-mod_src_install
	udev_dorules 51-ft60x.rules
}
