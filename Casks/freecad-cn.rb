cask "freecad-cn" do
  version "0.20.2,2022-12-27"
  sha256 :no_check

  url "https://github.com/FreeCAD/FreeCAD/releases/download/0.21.1/FreeCAD-0.21.1-mac-intel_x86.dmg"

  name "FreeCAD"
  desc "3D parametric modeler"
  homepage "https://www.freecadweb.org/"

  app "FreeCAD.app"

  zap trash: [
    "~/Library/Application Support/FreeCAD",
    "~/Library/Caches/FreeCAD",
    "~/Library/Preferences/FreeCAD",
    "~/Library/Preferences/com.freecad.FreeCAD.plist",
  ]
end
