# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6,7,8} )
PYTHON_REQ_USE="sqlite"

inherit eutils bash-completion-r1 python-single-r1

DESCRIPTION="An automatic SQL injection and database takeover tool"
HOMEPAGE="https://github.com/sqlmapproject/sqlmap"

if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/sqlmapproject/sqlmap"
else
	SRC_URI="https://github.com/sqlmapproject/sqlmap/archive/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-2"
<<<<<<< HEAD
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE="ntlm"

DEPEND=""
RDEPEND="ntlm? ( dev-python/python-ntlm[${PYTHON_USEDEP}] )"

QA_PREBUILT="
	usr/share/${PN}/udf/mysql/linux/32/lib_mysqludf_sys.so
	usr/share/${PN}/udf/mysql/linux/64/lib_mysqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/32/8.2/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/32/8.3/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/32/8.4/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/32/9.0/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/32/9.1/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/64/8.2/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/64/8.3/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/64/8.4/lib_postgresqludf_sys.so
	usr/share/${PN}/udf/postgresql/linux/64/9.0/lib_postgresqludf_sys.so"
=======
SLOT=0
IUSE="doc"
>>>>>>> cb949caa293c8bc8c262510444afa65aba6f2150

DEPEND="${PYTHON_DEPS}"

pkg_setup() {
	python-single-r1_pkg_setup
}

src_prepare() {
	if [[ ${PV} == *9999 ]]; then
		# fix broken tarball
		find ./ -name .git | xargs rm -rf || die

		# Don't forget to disable the revision check since we removed the SVN files
		sed \
			-e 's/= getRevisionNumber()/= "Unknown revision"/' \
			-i lib/core/settings.py || die 'sed failed!'
	fi

	mv doc/ "${T}"/doc || die
	#python_fix_shebang "${S}"

	default
}

src_install () {
	dodoc -r \
		README.md \
		$(use doc && echo "${T}/doc/*")

	dodir "/usr/share/${PN}/"
	cp -R * "${D}/usr/share/${PN}/" || die
	python_optimize "${D}/usr/share/${PN}"

	make_wrapper $PN \
		"python3 /usr/share/${PN}/sqlmap.py"

	newbashcomp "${FILESDIR}"/sqlmap.bash-completion sqlmap
}
