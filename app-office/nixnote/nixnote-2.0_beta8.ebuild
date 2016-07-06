EAPI=5

EGIT_REPO_URI="https://github.com/baumgarr/nixnote2.git"
EGIT_COMMIT="53ac8f58f3a68e2b4ff6d193dd6f23251e76e8c3"

DOCS=(README.txt changelog.txt)
inherit qt4-r2 git-r3 eutils

LICENSE="GPL2"
SLOT=0
KEYWORDS="~amd64 ~x86"

src_prepare() {
	cd "${S}"
	epatch "${FILESDIR}/add-install.patch"
}
