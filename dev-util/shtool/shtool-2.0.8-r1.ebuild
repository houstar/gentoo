# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Set of stable and portable shell scripts"
HOMEPAGE="https://www.gnu.org/software/shtool/shtool.html"
SRC_URI="mirror://gnu/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~hppa ~ia64 ~ppc ~s390 ~sh ~sparc ~x86"
IUSE=""

DEPEND="
	>=dev-lang/perl-5.6"

src_install () {
	emake DESTDIR="${D}" install
	dodoc AUTHORS ChangeLog README THANKS VERSION NEWS RATIONAL
}
