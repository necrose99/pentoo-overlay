# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit qmake-utils

DESCRIPTION="Guymager is a fast and user friendly forensic imager."
HOMEPAGE="http://guymager.sourceforge.net/"
SRC_URI="mirror://sourceforge/guymager/guymager/LatestSource/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"

#broken with the latest libewf, see: https://sourceforge.net/p/guymager/feature-requests/11/
#KEYWORDS="~x86 ~arm ~amd64"

IUSE="debug hdparm udisk smart parted"

RDEPEND="dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtdbus:5
	sys-libs/zlib
	sys-process/procps
	hdparm? ( sys-apps/hdparm )
	udisk? ( sys-fs/udisks:* )
	smart? ( sys-apps/smartmontools )
	parted? ( sys-block/parted )"
DEPEND="${RDEPEND}
	x11-libs/gksu
	app-forensics/libewf
	dev-libs/libguytools2:="

src_prepare() {
	epatch "${FILESDIR}/libewf201711.patch"
	eapply_user
}

src_configure() {
	eqmake5
}

src_compile() {
	make
	lrelease guymager.pro

	cd manuals
	./rebuild.sh
}

src_install() {
	dobin guymager
	doman manuals/guymager.1

	insinto /usr/share/guymager
	doins  guymager_*.ts

	insinto /etc/guymager
	doins guymager.cfg

	doicon guymager_128.png
	domenu guymager.desktop
}
