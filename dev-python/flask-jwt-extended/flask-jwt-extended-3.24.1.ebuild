# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1

DESCRIPTION="An open source Flask extension that provides JWT support"
HOMEPAGE="https://github.com/vimalloc/flask-jwt-extended"
SRC_URI="https://github.com/vimalloc/flask-jwt-extended/archive/${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/werkzeug-0.14[${PYTHON_USEDEP}]
	>=dev-python/flask-1.0.2[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-1.7.1[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.4.2[${PYTHON_USEDEP}]
	"
