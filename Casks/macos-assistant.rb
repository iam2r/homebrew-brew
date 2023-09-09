cask "macos-assistant" do


  version "1.3.3"
  sha256 :no_check

  url "https://drive.usercontent.google.com.proxy.iamrazo.pro/download?id=1N6qiU-OaC2PdbHuF6DZnOTThZ4rJXrGZ&export=download&authuser=0&confirm=t&uuid=06266267-f53d-4f3b-bcc4-77cb4736c9e4&at=APZUnTWv9hxcUpRdEy4-DnNkljBw:1693737744909"
  name "MacOS Assistant"
  desc "MacOS Assistant is a script tool developed by macwk.com, which contains some commonly used macOS command line script codes, which can help you perform some operations quickly."

  app "macOS Assistant.app"

  zap trash: [
  
  ]
end
