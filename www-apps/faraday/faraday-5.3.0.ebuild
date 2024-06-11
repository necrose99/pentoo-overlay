# faraday-5.3.0.ebuild
EAPI=8

PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Faraday - Collaborative Penetration Test and Vulnerability Management Platform"
HOMEPAGE="https://github.com/infobyte/faraday"
SRC_URI="https://github.com/infobyte/faraday/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
    >=dev-python/pyjwt-2.3.0[${PYTHON_USEDEP}]
    >=dev-python/werkzeug-1.0.0[${PYTHON_USEDEP}]<2.1.0
    >=dev-python/autobahn-22.7.1[${PYTHON_USEDEP}]
    >=dev-python/alembic-0.9.9[${PYTHON_USEDEP}]
    >=dev-python/bcrypt-3.1.4[${PYTHON_USEDEP}]
    >=dev-python/colorama-0.3.9[${PYTHON_USEDEP}]
    >=dev-python/click-8.0.1[${PYTHON_USEDEP}]
    >=dev-python/flask-1.1[${PYTHON_USEDEP}]<=2.1.3
    >=dev-python/flask-sqlalchemy-2.3.1[${PYTHON_USEDEP}]<=2.5.1
    >=dev-python/flask-classful-0.14[${PYTHON_USEDEP}]<0.16
    dev-python/email-validator[${PYTHON_USEDEP}]
    >=dev-python/flask-wtf-0.15.1[${PYTHON_USEDEP}]<=1.0.1
    >=dev-python/wtforms-2.1[${PYTHON_USEDEP}]
    >=dev-python/flask-login-0.5.0[${PYTHON_USEDEP}]<0.6.0
    >=dev-python/flask-security-too-4.0.0[${PYTHON_USEDEP}]<5.0.0
    >=dev-python/bleach-4.1.0[${PYTHON_USEDEP}]<5.0.0
    >=dev-python/marshmallow-3.19.0[${PYTHON_USEDEP}]
    >=dev-python/pillow-10.2.0[${PYTHON_USEDEP}]
    dev-python/psycopg2[${PYTHON_USEDEP}]
    dev-python/pgcli[${PYTHON_USEDEP}]
    >=dev-python/cryptography-40.0.1[${PYTHON_USEDEP}]
    >=dev-python/pyopenssl-23.1.1[${PYTHON_USEDEP}]
    >=dev-python/python-dateutil-2.6.0[${PYTHON_USEDEP}]
    >=dev-python/requests-2.18.4[${PYTHON_USEDEP}]
    dev-python/pyasn1[${PYTHON_USEDEP}]
    >=dev-python/service-identity-17.0.0[${PYTHON_USEDEP}]
    >=dev-python/sqlalchemy-1.2.0[${PYTHON_USEDEP}]<1.4.0
    >=dev-python/tqdm-4.15.0[${PYTHON_USEDEP}]
    >=dev-python/webargs-7.0.0[${PYTHON_USEDEP}]
    >=dev-python/marshmallow-sqlalchemy-0.26.1[${PYTHON_USEDEP}]<0.28.1
    dev-python/filteralchemy-fork[${PYTHON_USEDEP}]
    >=dev-python/filedepot-0.5.0[${PYTHON_USEDEP}]<0.11.0
    >=dev-python/nplusone-0.8.1[${PYTHON_USEDEP}]
    >=dev-python/syslog-rfc5424-formatter-1.1.1[${PYTHON_USEDEP}]
    >=dev-python/simplekv-0.13.0[${PYTHON_USEDEP}]
    >=dev-python/flask-kvsession-fork-0.6.4[${PYTHON_USEDEP}]
    >=dev-python/distro-1.4.0[${PYTHON_USEDEP}]
    >=dev-python/faraday-plugins-1.18.0[${PYTHON_USEDEP}]<2.0.0
    >=dev-python/apispec-6.3.0[${PYTHON_USEDEP}]
    <=dev-python/apispec-webframeworks-0.5.2[${PYTHON_USEDEP}]
    dev-python/pyyaml[${PYTHON_USEDEP}]
    ==dev-python/bidict-0.22.0[${PYTHON_USEDEP}]
    >=dev-python/flask-socketio-5.0.1[${PYTHON_USEDEP}]
    >=dev-python/pyotp-2.6.0[${PYTHON_USEDEP}]
    >=dev-python/flask-limiter-1.3.1[${PYTHON_USEDEP}]<1.4.0
    dev-python/flask-mail[${PYTHON_USEDEP}]
    >=dev-python/faraday-agent-parameters-types-1.6.0[${PYTHON_USEDEP}]
    >=dev-python/cvss-2.5[${PYTHON_USEDEP}]
    >=dev-python/celery-5.2.7[${PYTHON_USEDEP}]
    >=dev-python/gevent-22.10.2[${PYTHON_USEDEP}]
    >=dev-python/psycogreen-1.0.2[${PYTHON_USEDEP}]
    >=dev-python/flask-celery-helper-1.1.0[${PYTHON_USEDEP}]
    >=dev-python/redis-4.3.4[${PYTHON_USEDEP}]
    >=dev-python/gevent-websocket-0.10.1[${PYTHON_USEDEP}]
    >=dev-python/beautifulsoup4-4.6.0[${PYTHON_USEDEP}]
    >=dev-python/w3af_api_client-1.1.7[${PYTHON_USEDEP}]
    >=dev-python/selenium-3.9.0[${PYTHON_USEDEP}]
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
