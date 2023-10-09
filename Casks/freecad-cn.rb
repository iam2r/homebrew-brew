cask "freecad-cn" do
  version "0.20.2,2022-12-27"
  sha256 :no_check

  url "https://objects.githubusercontent.com/github-production-release-asset-2e65be/5736080/e7f9a541-4d60-4571-9c26-c56131c327f6?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20231009%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20231009T012026Z&X-Amz-Expires=300&X-Amz-Signature=f176e2174dff88b6c053b0ac28caafa05e715e4ced6a9788e18433258378611c&X-Amz-SignedHeaders=host&actor_id=25945398&key_id=0&repo_id=5736080&response-content-disposition=attachment%3B%20filename%3DFreeCAD-0.21.1-mac-intel_x86-unsigned.dmg&response-content-type=application%2Foctet-stream",

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
