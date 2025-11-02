# ebuild by André Klausnitzer, CC0

EAPI=8

DESCRIPTION="a pipeable JSON parser written in bash"
HOMEPAGE="https://github.com/poinck/JSON.sh"
SRC_URI="https://github.com/poinck/JSON.sh/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="virtual/awk"
DEPEND="${RDEPEND}"

S="${WORKDIR}/JSON.sh-${PV}"

src_install() {
	dobin JSON.sh
	dodoc README.md
}
