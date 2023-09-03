cask "openstudio" do
  arch arm: "arm64", intel: "x86_64"

  version "3.6.1"
  sha256 arm:   "1dccf520d807e2eb6510e5c0f33f8d2dd11381143ea4b1ef5c0230d371c6dcd4",
         intel: "033e5383fec82327196d8a58834a50f95a37d2e4dde9f397cdd34317a2a7d8d7"

  url "https://github.com/NREL/OpenStudio/releases/download/v#{version.csv.first}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}.dmg"
  name "OpenStudio"
  desc "Cross-platform collection of software tools to support whole building energy modeling"
  homepage "https://github.com/NREL/OpenStudio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  installer script: {
      executable: "#{staged_path}/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}.app/Contents/MacOS/OpenStudio-#{version.csv.first}+#{version.csv.second}-Darwin-#{arch}",
    }

  binary "/Applications/OpenStudio-#{version.csv.first}/bin/openstudio"

  uninstall delete: "/Applications/OpenStudio-#{version.csv.first}"

  zap trash: []
end
