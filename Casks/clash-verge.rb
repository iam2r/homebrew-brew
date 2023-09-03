cask "clash-verge" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "6b3950f7b1251ee22e66fc28fd1cde4e3024910fd7ccf743ba1c715ebff1b81e",
         intel: "66db87ec09761e49eab542369cae16579f1552d17a19483502bfacaac326df97"

  url "https://github.com/zzzgydi/clash-verge/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash for Windows"
  desc "Cross-Platform Clash GUI based on Tauri"
  homepage "https://github.com/zzzgydi/clash-verge"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Clash Verge.app"

  zap trash: [
    "~/.config/clash-verge",
    "~/Library/Caches/top.gydi.clashverge",
    "~/Library/Preferences/top.gydi.clashverge.plist",
    "~/Library/Saved Application State/top.gydi.clashverge.savedState",
  ]
end
