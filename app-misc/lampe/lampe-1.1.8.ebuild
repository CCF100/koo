# ebuild by André Klausnitzer, CC0

EAPI=8
VALA_MIN_API_VERSION=0.26

DESCRIPTION="Control your Philips Hue lights"
HOMEPAGE="https://github.com/poinck/lampe"
SRC_URI="https://github.com/poinck/lampe/archive/${PV}.tar.gz -> ${P}.tar.gz"
inherit vala

LICENSE="CC0"
SLOT="0"
KEYWORDS="amd64 ~arm ~x86"
IUSE=""

RDEPEND="net-misc/curl
	sys-apps/sed
	>=app-misc/JSON-sh-0.2.1
	>=dev-libs/glib-2.42:2
	dev-libs/json-glib
	>=x11-libs/gtk+-3.14:3
	>=net-libs/libsoup-2.48.1
	x11-misc/redshift[geoclue]"
DEPEND="${RDEPEND}
	$(vala_depend)"

src_install() {
	# default
	emake DESTDIR="${D}" install

}
