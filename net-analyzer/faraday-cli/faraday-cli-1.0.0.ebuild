# faraday-cli-1.0.0.ebuild
EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Faraday CLI - Command Line Interface for Faraday"
HOMEPAGE="https://github.com/infobyte/faraday-cli"
SRC_URI="https://github.com/infobyte/faraday-cli/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
    >=dev-python/faraday-plugins-1.11.0[${PYTHON_USEDEP}]
    >=dev-python/click-8.0.1[${PYTHON_USEDEP}]
    >=dev-python/colorama-0.4.4[${PYTHON_USEDEP}]
    >=dev-python/jsonschema-3.2.0[${PYTHON_USEDEP}]
    >=dev-python/pyyaml-5.4.1[${PYTHON_USEDEP}]
    >=dev-python/simple-rest-client-1.0.8[${PYTHON_USEDEP}]
    >=dev-python/tabulate-0.8.9[${PYTHON_USEDEP}]
    >=dev-python/validators-0.18.2[${PYTHON_USEDEP}]
    >=dev-python/spinners-0.0.24[${PYTHON_USEDEP}]
    >=dev-python/termcolor-1.1.0[${PYTHON_USEDEP}]
    >=dev-python/cmd2-2.3.0[${PYTHON_USEDEP}]
    >=dev-python/log-symbols-0.0.14[${PYTHON_USEDEP}]
    >=dev-python/arrow-1.1.0[${PYTHON_USEDEP}]
    >=dev-python/py-sneakers-1.0.1[${PYTHON_USEDEP}]
    >=dev-python/luddite-1.0.2[${PYTHON_USEDEP}]
    >=dev-python/packaging-21.3[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}
    dev-python/setuptools[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

src_prepare() {
    default
    # Any additional preparation steps can go here
}

src_install() {
    distutils-r1_src_install
    # Any additional installation steps can go here
}
