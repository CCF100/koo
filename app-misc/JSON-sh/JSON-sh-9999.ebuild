# ebuild by André Klausnitzer, CC0

EAPI=8

EGIT_REPO_URI="https://github.com/dominictarr/JSON.sh.git"
inherit git-r3

DESCRIPTION="a pipeable JSON parser written in bash"
HOMEPAGE="https://github.com/dominictarr/JSON.sh"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

RDEPEND="app-alternatives/awk"
DEPEND="${RDEPEND}"
	
S="${WORKDIR}/JSON-sh-${PV}"

src_install() {
	dobin JSON.sh
	dodoc README.md
}
