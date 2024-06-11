# faraday-agent-dispatcher-1.0.0.ebuild
EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Faraday Agent Dispatcher - Dispatcher for Faraday Agents"
HOMEPAGE="https://github.com/infobyte/faraday_agent_dispatcher"
SRC_URI="https://github.com/infobyte/faraday_agent_dispatcher/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
    dev-python/requests[${PYTHON_USEDEP}]
    dev-python/click[${PYTHON_USEDEP}]
    dev-python/pytz[${PYTHON_USEDEP}]
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
