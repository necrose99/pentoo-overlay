# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{6,7} )

inherit distutils-r1

DESCRIPTION="Declarative parsing and validation of HTTP request objects"
HOMEPAGE="https://github.com/marshmallow-code/webargs"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="
	>=dev-python/marshmallow-2.15.2[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/simplejson[${PYTHON_USEDEP}]' pypy python2_7 )
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
