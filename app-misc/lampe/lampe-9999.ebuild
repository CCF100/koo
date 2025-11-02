# by André Klausnitzer, CC0

EAPI=8
VALA_MIN_API_VERSION=0.26

EGIT_REPO_URI="https://github.com/poinck/lampe.git"
inherit git-r3 vala

DESCRIPTION="Control your Philips Hue lights"
HOMEPAGE="https://github.com/poinck/lampe"
SRC_URI=""

LICENSE="CC0"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="net-misc/curl
	sys-apps/sed
	app-misc/JSON-sh
	>=dev-libs/glib-2.42:2
	dev-libs/json-glib
	>=x11-libs/gtk+-3.14:3
	net-libs/libsoup:2.4"
DEPEND="${RDEPEND}
	$(vala_depend)"

src_install() {
	# default
	emake DESTDIR="${D}" install

}
