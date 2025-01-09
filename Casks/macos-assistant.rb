cask "macos-assistant" do


  version "1.3.3"
  sha256 :no_check

  url "https://proxy.vercel.iamrazo.cloudns.org/drive.usercontent.google.com/download?id=1N6qiU-OaC2PdbHuF6DZnOTThZ4rJXrGZ&export=download&confirm=t"
  name "MacOS Assistant"
  desc "MacOS Assistant is a script tool developed by macwk.com, which contains some commonly used macOS command line script codes, which can help you perform some operations quickly."

  app "macOS Assistant.app"

  zap trash: [
  
  ]
end
