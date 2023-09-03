cask "qt-creator-cn" do
  version "11.0.1"
  sha256 "2c6f4df0f29ac0573e46b5ec70109a56fac7cf11df04485f8f42ec1997b47b17"

  url "https://mirrors.tuna.tsinghua.edu.cn/qt/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator"
  desc "IDE for application development"
  homepage "https://www.qt.io/developers/"

  # It's necessary to check within a major/minor version directory
  # (fetching an additional page) to obtain the full version.
  livecheck do
    url "https://download.qt.io/official_releases/qtcreator/?C=M;O=D"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
    strategy :page_match do |page, regex|
      # These version directories can sometimes be empty, so this will check
      # directory pages until it finds versions
      page.scan(regex).lazy.map do |match|
        version_page = Homebrew::Livecheck::Strategy.page_content(url.sub("/?", "/#{match[0]}/?"))
        next if version_page[:content].blank?

        versions = version_page[:content].scan(regex).map(&:first)
        next if versions.blank?

        versions
      end.compact_blank.first
    end
  end

  conflicts_with cask: "qt-creator"
  depends_on macos: ">= :sierra"

  app "Qt Creator.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.QtCreator.plist",
    "~/Library/Preferences/org.qt-project.qtcreator.plist",
    "~/Library/Saved Application State/org.qt-project.qtcreator.savedState",
  ]
end
