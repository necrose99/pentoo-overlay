# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python{3_7,3_8,3_9} )
inherit distutils-r1

### skel swiped from yara-python 

DESCRIPTION="fchroot, also known as "Franken-Chroot" , is a utility that helps you to leverage the magic of python & QEMU to chroot into a non-native system Easily"
#" builds gcc- o qemu-wrapper/,binfmt-misc and handdles  much bullshit./haasles (automaticly)  of .. /etc/resolv.conf  fchroot /mnt/gentoo-rpi64 wam." 

HOMEPAGE="https://code.funtoo.org/bitbucket/users/drobbins/repos/fchroot/browse"
if [ "${PV}" = "9999" ];then
	inherit git-r3
	EGIT_REPO_URI=https://code.funtoo.org/bitbucket/scm/~drobbins/fchroot.git"
else
	KEYWORDS="~*"
	
	SRC_URI="https://files.pythonhosted.org/packages/f2/04/4db5e98e93207dbb9bb71725767a8d016f9aa1e70c9c7892a5c270c3eac6/fchroot-${PV}.tar.gz"
	S="${WORKDIR}/${PN}-${COMMIT}"
fi

"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~* x86 AMD64"

DEPEND="qemu-riscv64-bin/qemu [qemu_user_targets_riscv64] [qemu_user_targets_arm] [qemu_user_targets_arm64]"
## could RIG USE="static -static , RISCV , arm/arm64 etc.. ## 
RDEPEND="${DEPEND}"

einfo " https://github.com/multiarch/qemu-user-static/releases , if copying an emulator into target env. / or symlinks if nothing else, and or into docker etc. dont feel like building qemu atm." 
