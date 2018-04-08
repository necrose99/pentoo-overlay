# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1

DESCRIPTION="Python library for NTLM support"
HOMEPAGE="https://github.com/mullender/python-ntlm"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
<<<<<<< HEAD:dev-python/python-ntlm/python-ntlm-1.1.0.ebuild
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE="example"
=======
KEYWORDS="~amd64 ~x86"
IUSE="examples"
>>>>>>> c16eee6c82599af4f12b4d94439ba1464a515b2c:dev-python/python-ntlm/python-ntlm-1.1.0-r1.ebuild

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	python_foreach_impl distutils-r1_python_install || die
	if ! use examples ; then
		rm -r "${D}"/usr/bin/ || die
		rm -r "${D}"/usr/lib/python-exec || die
	fi
}
