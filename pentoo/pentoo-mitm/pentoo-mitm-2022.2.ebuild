# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Pentoo mitm meta ebuild"
HOMEPAGE="https://www.pentoo.org"

SLOT="0"
LICENSE="GPL-3"
KEYWORDS="~amd64 ~arm ~x86"

PDEPEND="
	net-analyzer/ettercap
	net-misc/bridge-utils
	net-analyzer/bettercap
"
